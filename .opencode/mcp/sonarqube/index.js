import { Server } from "@modelcontextprotocol/sdk/server/index.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import {
  CallToolRequestSchema,
  ListToolsRequestSchema,
} from "@modelcontextprotocol/sdk/types.js";

const SONAR_HOST = process.env.SONAR_HOST_URL || "http://localhost:9000";
const SONAR_TOKEN = process.env.SONAR_TOKEN || "";
const AUTH = Buffer.from(`${SONAR_TOKEN}:`).toString("base64");

async function api(path) {
  const url = `${SONAR_HOST}/api/${path}`;
  const res = await fetch(url, {
    headers: {
      Authorization: `Basic ${AUTH}`,
      Accept: "application/json",
    },
  });
  if (!res.ok) {
    throw new Error(`SonarQube API ${res.status}: ${await res.text()}`);
  }
  return res.json();
}

const server = new Server(
  { name: "sonarqube", version: "1.0.0" },
  { capabilities: { tools: {} } },
);

server.setRequestHandler(ListToolsRequestSchema, async () => ({
  tools: [
    {
      name: "project_quality",
      description: "Get quality gate status and summary measures for a project",
      inputSchema: {
        type: "object",
        properties: {
          projectKey: { type: "string", description: "SonarQube project key (default: shopping_list)" },
        },
      },
    },
    {
      name: "list_issues",
      description: "List issues (bugs, vulnerabilities, code smells) with filters",
      inputSchema: {
        type: "object",
        properties: {
          projectKey: { type: "string" },
          types: { type: "string", description: "Comma-separated: BUG, VULNERABILITY, CODE_SMELL" },
          severities: { type: "string", description: "Comma-separated: BLOCKER, CRITICAL, MAJOR, MINOR, INFO" },
          statuses: { type: "string", description: "Comma-separated: OPEN, CONFIRMED, RESOLVED, REOPENED" },
          resolved: { type: "boolean" },
          ps: { type: "number", description: "Page size (max 500)" },
        },
      },
    },
    {
      name: "list_projects",
      description: "List all projects in SonarQube",
      inputSchema: {
        type: "object",
        properties: {
          ps: { type: "number", description: "Page size" },
        },
      },
    },
    {
      name: "get_metrics",
      description: "Get measures (metrics) for a project",
      inputSchema: {
        type: "object",
        properties: {
          projectKey: { type: "string" },
          metricKeys: {
            type: "string",
            description: "Comma-separated metric keys. Common: coverage,line_coverage,branch_coverage,duplicated_lines_density,code_smells,bugs,vulnerabilities,security_hotspots,lines_of_code,ncloc,tests,test_success_density,test_execution_time,test_failures,test_errors,skipped_tests,quality_gate_details",
          },
        },
      },
    },
    {
      name: "list_hotspots",
      description: "List security hotspots for a project",
      inputSchema: {
        type: "object",
        properties: {
          projectKey: { type: "string" },
          ps: { type: "number" },
        },
      },
    },
  ],
}));

server.setRequestHandler(CallToolRequestSchema, async (request) => {
  const { name, arguments: args } = request.params;

  try {
    switch (name) {
      case "project_quality": {
        const key = args?.projectKey || "shopping_list";
        const [quality, measures] = await Promise.all([
          api(`qualitygates/project_status?projectKey=${encodeURIComponent(key)}`),
          api(`measures/component?component=${encodeURIComponent(key)}&metricKeys=alert_status,quality_gate_details,bugs,vulnerabilities,code_smells,coverage,duplicated_lines_density,lines_of_code,ncloc,tests,test_success_density`),
        ]);
        return { content: [{ type: "text", text: JSON.stringify({ qualityGate: quality, measures: measures.component }, null, 2) }] };
      }

      case "list_issues": {
        const params = new URLSearchParams();
        if (args?.projectKey) params.set("componentKeys", args.projectKey);
        if (args?.types) params.set("types", args.types);
        if (args?.severities) params.set("severities", args.severities);
        if (args?.statuses) params.set("statuses", args.statuses);
        if (args?.resolved !== undefined) params.set("resolved", String(args.resolved));
        if (args?.ps) params.set("ps", String(args.ps));
        params.set("ps", String(args?.ps || 100));
        const data = await api(`issues/search?${params}`);
        return { content: [{ type: "text", text: JSON.stringify(data, null, 2) }] };
      }

      case "list_projects": {
        const params = new URLSearchParams();
        if (args?.ps) params.set("ps", String(args.ps));
        params.set("ps", String(args?.ps || 100));
        const data = await api(`projects/search?${params}`);
        return { content: [{ type: "text", text: JSON.stringify(data, null, 2) }] };
      }

      case "get_metrics": {
        const key = args?.projectKey || "shopping_list";
        const metricKeys = args?.metricKeys || "alert_status,bugs,vulnerabilities,code_smells,coverage,duplicated_lines_density,lines_of_code,ncloc,tests,test_success_density,security_hotspots";
        const data = await api(`measures/component?component=${encodeURIComponent(key)}&metricKeys=${encodeURIComponent(metricKeys)}`);
        return { content: [{ type: "text", text: JSON.stringify(data.component, null, 2) }] };
      }

      case "list_hotspots": {
        const key = args?.projectKey || "shopping_list";
        const ps = args?.ps || 100;
        const data = await api(`hotspots/search?projectKey=${encodeURIComponent(key)}&ps=${ps}`);
        return { content: [{ type: "text", text: JSON.stringify(data, null, 2) }] };
      }

      default:
        throw new Error(`Unknown tool: ${name}`);
    }
  } catch (e) {
    return { content: [{ type: "text", text: `Error: ${e.message}` }], isError: true };
  }
});

const transport = new StdioServerTransport();
await server.connect(transport);
