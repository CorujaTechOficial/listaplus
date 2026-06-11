import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const config: Config = {
  title: 'KipiList',
  tagline: 'Smart Shopping List App — Flutter + Firebase + AI',
  favicon: 'img/favicon.ico',

  future: {
    v4: true,
  },

  url: 'https://kipilist.corujatech.com.br',
  baseUrl: '/',

  organizationName: 'corujatech',
  projectName: 'kipilist',

  onBrokenLinks: 'warn',
  onBrokenMarkdownLinks: 'warn',

  i18n: {
    defaultLocale: 'pt',
    locales: ['pt'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          routeBasePath: 'docs',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    image: 'img/kipilist-social.png',
    colorMode: {
      defaultMode: 'light',
      respectPrefersColorScheme: true,
    },
    navbar: {
      title: 'KipiList',
      logo: {
        alt: 'KipiList Logo',
        src: 'img/logo.svg',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'docsSidebar',
          position: 'left',
          label: 'Documentação',
        },
        {
          href: 'https://play.google.com/store/apps/details?id=br.com.curujatech.listaplus',
          label: 'Play Store',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Documentação',
          items: [
            { label: 'Visão Geral', to: '/docs/overview' },
            { label: 'Arquitetura', to: '/docs/architecture/overview' },
            { label: 'Deploy', to: '/docs/deployment/play-store' },
          ],
        },
        {
          title: 'Produto',
          items: [
            { label: 'Funcionalidades', to: '/docs/features/shopping-lists' },
            { label: 'IA / Kipi', to: '/docs/features/ai-agent' },
            { label: 'Monetização', to: '/docs/features/monetization' },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} CoruJaTech. Documentação gerada com Docusaurus.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
      additionalLanguages: ['dart', 'bash', 'json', 'yaml'],
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
