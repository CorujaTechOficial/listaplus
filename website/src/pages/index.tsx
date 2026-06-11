import type {ReactNode} from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import Heading from '@theme/Heading';

import styles from './index.module.css';

const features = [
  {
    title: 'Listas Colaborativas',
    emoji: '🛒',
    description: 'Crie e compartilhe listas em tempo real. Colaboração via Firestore, organizadas por categorias.',
  },
  {
    title: 'Kipi — Assistente IA',
    emoji: '🤖',
    description: 'Assistente com 45+ ferramentas. Adiciona itens, organiza listas, sugere receitas e planeja refeições.',
  },
  {
    title: 'Despensa + Scanner',
    emoji: '📦',
    description: 'Controle o estoque de casa com scanner de código de barras e alertas de validade.',
  },
  {
    title: '86 Idiomas',
    emoji: '🌍',
    description: '123 arquivos ARB com traduções genuínas. Zero placeholders em inglês.',
  },
  {
    title: 'Flutter + Firebase',
    emoji: '⚡',
    description: 'Material Design 3, Riverpod 3.x, Firebase, RevenueCat. Arquitetura modular por feature.',
  },
  {
    title: 'KipiList Pro',
    emoji: '⭐',
    description: 'Listas ilimitadas e IA avançada. R$4,99/mês ou R$29,99/ano via RevenueCat.',
  },
];

function HomepageHeader() {
  const {siteConfig} = useDocusaurusContext();
  return (
    <header className={clsx('hero hero--primary', styles.heroBanner)}>
      <div className="container">
        <div className={styles.heroEmoji}>🐧</div>
        <Heading as="h1" className="hero__title">
          {siteConfig.title}
        </Heading>
        <p className="hero__subtitle">{siteConfig.tagline}</p>
        <div className={styles.buttons}>
          <Link className="button button--secondary button--lg" to="/docs/overview">
            Ver Documentação
          </Link>
          <Link className="button button--outline button--secondary button--lg" to="/docs/development/setup">
            Guia de Setup
          </Link>
        </div>
        <div className={styles.badges}>
          <span className={styles.badge}>v1.0.77+77</span>
          <span className={styles.badge}>Flutter 3.x</span>
          <span className={styles.badge}>Android</span>
          <span className={styles.badge}>86 locales</span>
        </div>
      </div>
    </header>
  );
}

function FeatureCard({title, emoji, description}: {title: string; emoji: string; description: string}) {
  return (
    <div className={clsx('col col--4', styles.featureCard)}>
      <div className={styles.featureEmoji}>{emoji}</div>
      <Heading as="h3">{title}</Heading>
      <p>{description}</p>
    </div>
  );
}

export default function Home(): ReactNode {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout
      title={siteConfig.title}
      description="Documentação do KipiList — app de lista de compras com IA para Android">
      <HomepageHeader />
      <main>
        <section className={styles.features}>
          <div className="container">
            <div className="row">
              {features.map((f) => (
                <FeatureCard key={f.title} {...f} />
              ))}
            </div>
          </div>
        </section>

        <section className={styles.quickLinks}>
          <div className="container">
            <Heading as="h2">Navegação Rápida</Heading>
            <div className={styles.linkGrid}>
              <Link to="/docs/architecture/overview" className={styles.quickLink}>
                <strong>Arquitetura</strong>
                <span>Camadas, features, serviços</span>
              </Link>
              <Link to="/docs/features/ai-agent" className={styles.quickLink}>
                <strong>Assistente Kipi</strong>
                <span>Ferramentas, fluxo do agente</span>
              </Link>
              <Link to="/docs/deployment/play-store" className={styles.quickLink}>
                <strong>Deploy Play Store</strong>
                <span>Build, upload, checklist</span>
              </Link>
              <Link to="/docs/development/gotchas" className={styles.quickLink}>
                <strong>Gotchas e Bugs</strong>
                <span>Armadilhas conhecidas</span>
              </Link>
              <Link to="/docs/data-models/firestore-schema" className={styles.quickLink}>
                <strong>Schema Firestore</strong>
                <span>Coleções e campos</span>
              </Link>
              <Link to="/docs/development/commands" className={styles.quickLink}>
                <strong>Comandos</strong>
                <span>Referência rápida de CLI</span>
              </Link>
            </div>
          </div>
        </section>
      </main>
    </Layout>
  );
}
