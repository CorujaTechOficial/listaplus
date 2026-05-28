# Remoção de Testes e Git Hooks Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Limpar o repositório removendo testes desatualizados e desativando hooks de qualidade que bloqueiam commits/pushes.

**Architecture:** Exclusão direta de arquivos e diretórios, seguida de atualização de documentos de governança (GEMINI.md/AGENTS.md) e CI.

**Tech Stack:** Bash, Git.

---

### Task 1: Remoção do Diretório de Testes

**Files:**
- Delete: `test/`
- Delete: `tests.output` (se existir)
- Delete: `test_run.log` (se existir)

- [ ] **Step 1: Remover diretório test/**
Run: `rm -rf test/`

- [ ] **Step 2: Remover arquivos de log de teste residuais**
Run: `rm -f tests.output test_run.log`

- [ ] **Step 3: Commit da remoção**
Run: `git add . && git commit -m "chore: remove outdated and slow tests"`

---

### Task 2: Desativar Git Hooks

**Files:**
- Delete: `.git/hooks/pre-commit`
- Delete: `.githooks/`

- [ ] **Step 1: Remover hook ativo em .git/hooks**
Run: `rm -f .git/hooks/pre-commit`

- [ ] **Step 2: Remover diretório de templates de hooks**
Run: `rm -rf .githooks/`

- [ ] **Step 3: Resetar configuração de hooksPath do git**
Run: `git config --unset core.hooksPath || true`

- [ ] **Step 4: Commit da remoção dos hooks**
Run: `git add . && git commit -m "chore: remove pre-commit quality hooks"`

---

### Task 3: Atualizar Documentação de Governança

**Files:**
- Modify: `GEMINI.md`
- Modify: `AGENTS.md`

- [ ] **Step 1: Remover seção de testes do GEMINI.md**
Remover a seção `## Testing Strategy` e referências a "100% Coverage" e "flutter test --coverage".

- [ ] **Step 2: Remover comandos de teste do AGENTS.md**
Remover referências a `flutter test` e `.githooks/setup.sh`.

- [ ] **Step 3: Commit das atualizações de doc**
Run: `git add GEMINI.md AGENTS.md && git commit -m "docs: remove testing and hooks mandates"`

---

### Task 4: Atualizar GitHub Actions (CI)

**Files:**
- Modify: `.github/workflows/ci.yml`
- Modify: `.github/workflows/sonar.yml`

- [ ] **Step 1: Remover job de 'test' do ci.yml**
Remover todo o bloco do job `test`.

- [ ] **Step 2: (Opcional) Ajustar sonar.yml**
Se o SonarQube dependia dos testes, remover as referências a coverage.

- [ ] **Step 3: Commit do CI**
Run: `git add .github/workflows/ && git commit -m "ci: remove test jobs"`
