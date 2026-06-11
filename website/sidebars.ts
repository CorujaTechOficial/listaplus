import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  docsSidebar: [
    'overview',
    {
      type: 'category',
      label: 'Arquitetura',
      collapsed: false,
      items: [
        'architecture/overview',
        'architecture/state-management',
        'architecture/firebase',
        'architecture/ai-agent',
        'architecture/localization',
        'architecture/custom-lints',
      ],
    },
    {
      type: 'category',
      label: 'Funcionalidades',
      collapsed: false,
      items: [
        'features/shopping-lists',
        'features/ai-agent',
        'features/catalog',
        'features/pantry',
        'features/recipes',
        'features/meal-planner',
        'features/monetization',
        'features/onboarding',
        'features/settings',
      ],
    },
    {
      type: 'category',
      label: 'Modelos de Dados',
      items: [
        'data-models/overview',
        'data-models/firestore-schema',
      ],
    },
    {
      type: 'category',
      label: 'Desenvolvimento',
      items: [
        'development/setup',
        'development/commands',
        'development/code-generation',
        'development/testing',
        'development/gotchas',
      ],
    },
    {
      type: 'category',
      label: 'Deploy',
      items: [
        'deployment/play-store',
        'deployment/translations',
        'deployment/ci-cd',
      ],
    },
  ],
};

export default sidebars;
