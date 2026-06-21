---
name: KipiList
description: Shopping list assistant with practical AI, calm clarity, and light premium polish.
colors:
  brand-green: "#2E7D32"
  premium-amber: "#FFA000"
  premium-amber-container: "#FFF8E1"
  scaffold-light: "#F8F9FA"
  scaffold-dark: "#0F1116"
  surface-dark: "#1E222B"
  dialog-dark: "#252A36"
  success: "#1B5E20"
  success-container: "#B9F6CA"
  warning: "#BF360C"
  warning-container: "#FFCCBC"
  info: "#0D47A1"
  info-container: "#BBDEFB"
typography:
  display:
    fontFamily: "PlusJakartaSans"
    fontSize: "32px"
    fontWeight: 800
    lineHeight: 1.15
    letterSpacing: "-1px"
  headline:
    fontFamily: "PlusJakartaSans"
    fontSize: "24px"
    fontWeight: 800
    lineHeight: 1.2
    letterSpacing: "-0.5px"
  title:
    fontFamily: "PlusJakartaSans"
    fontSize: "18px"
    fontWeight: 700
    lineHeight: 1.25
    letterSpacing: "0px"
  body:
    fontFamily: "PlusJakartaSans"
    fontSize: "16px"
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: "0.2px"
  label:
    fontFamily: "PlusJakartaSans"
    fontSize: "14px"
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: "0.5px"
rounded:
  xxs: "4px"
  xs: "6px"
  sm: "8px"
  md: "12px"
  lg: "16px"
  xl: "20px"
  xxl: "24px"
  xxxl: "28px"
  bubble: "32px"
  full: "999px"
spacing:
  xxs: "4px"
  xs: "8px"
  sm: "12px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  xxl: "48px"
  xxxl: "64px"
components:
  button-primary:
    backgroundColor: "{colors.brand-green}"
    textColor: "#FFFFFF"
    typography: "{typography.label}"
    rounded: "{rounded.lg}"
    padding: "16px 24px"
  button-upgrade:
    backgroundColor: "{colors.premium-amber}"
    textColor: "#000000"
    typography: "{typography.label}"
    rounded: "{rounded.xl}"
    padding: "16px 24px"
  card-default:
    backgroundColor: "{colors.scaffold-light}"
    textColor: "#000000"
    rounded: "{rounded.lg}"
    padding: "24px"
  input-default:
    backgroundColor: "{colors.scaffold-light}"
    textColor: "#000000"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: "16px 16px"
  chip-default:
    backgroundColor: "{colors.premium-amber-container}"
    textColor: "#000000"
    typography: "{typography.label}"
    rounded: "{rounded.full}"
    padding: "8px 12px"
---

# Design System: KipiList

## 1. Overview

**Creative North Star: "The Confident Household Assistant"**

KipiList uses a practical Material 3 base, shaped into a warmer and more competent product surface for everyday household organization. The system is designed to help users move quickly through tasks with low mental load while still feeling that the product has enough finish and confidence to justify a subscription decision.

The visual language is intentionally restrained. It relies on one strong green brand anchor, a premium amber accent reserved for monetization and reward moments, and soft neutral surfaces that keep content readable and familiar. The interface should feel more like a trustworthy helper than a playful gadget. In onboarding and paywall flows, this means clarity first, persuasion second, decoration last.

This system explicitly rejects three failure modes from [PRODUCT.md](/Users/absondutragalvao/corujatech%20projetos/shopping_list/PRODUCT.md:1): heavy finance-app seriousness, generic "AI magic" hype, and noisy paywall design that looks opportunistic before value is proven.

**Key Characteristics:**
- Familiar product UI patterns with light premium polish
- Strong emphasis on legibility and predictable interaction
- Accent color used meaningfully, not decoratively
- Practical warmth over futuristic spectacle
- Conversion moments energized by hierarchy, not by visual noise

## 2. Colors

The palette is a restrained product palette built around a grounded green seed, soft neutral scaffolds, and a monetization amber that appears only when the product is asking for upgrade attention or signaling premium value.

### Primary
- **Confidence Green** (`#2E7D32`): The core brand seed. It carries primary actions, selected states, and the sense of competent, useful assistance. It should read as steady and helpful, not flashy.

### Secondary
- **Premium Amber** (`#FFA000`): Reserved for premium badges, upgrade CTAs, stars, and moments where the product is framing paid value. It should remain rare enough to feel meaningful.

### Tertiary
- **Clarity Blue** (`#0D47A1`): Used as a semantic info color. It supports education and guidance states without competing with primary conversion actions.

### Neutral
- **Soft Utility Light** (`#F8F9FA`): Default light scaffold background. Keeps the app bright, breathable, and practical.
- **Night Utility Base** (`#0F1116`): Default dark scaffold background. Supports dense usage without going theatrical.
- **Elevated Night Surface** (`#1E222B`): Cards and layered surfaces in dark mode.
- **Dialog Night Layer** (`#252A36`): Dialogs and sheets that need stronger separation in dark mode.
- **Success Green** (`#1B5E20`) and **Success Wash** (`#B9F6CA`): Positive completion and confidence cues.
- **Warning Ember** (`#BF360C`) and **Warning Wash** (`#FFCCBC`): Caution states with enough weight to feel urgent but not alarming.
- **Info Blue** (`#0D47A1`) and **Info Wash** (`#BBDEFB`): Guidance and informational emphasis.

### Named Rules
**The Premium Accent Rule.** Premium amber is not a general decoration color. It appears only where the user is evaluating upgrade value, premium status, or reward.

**The Calm Surface Rule.** Backgrounds stay quiet so content, actions, and state changes do the work. The app should not feel tinted, sugary, or marketing-heavy during task flow.

## 3. Typography

**Display Font:** PlusJakartaSans (with system sans fallback)  
**Body Font:** PlusJakartaSans (with system sans fallback)  
**Label/Mono Font:** PlusJakartaSans for UI labels; no distinct mono voice is part of the current system

**Character:** The typography is compact, confident, and modern without becoming cold. It supports product trust by staying familiar, dense enough for utility, and slightly sharpened at headline level for stronger conversion messaging.

### Hierarchy
- **Display** (800, 32px, 1.15): Reserved for hero moments, onboarding statements, and top-level promotional emphasis where the product needs to make a clear promise fast.
- **Headline** (800, 24px, 1.2): Primary section titles and feature anchors. This is the working voice of high-emphasis product messaging.
- **Title** (700, 18px, 1.25): Card titles, list section headers, and medium-emphasis labels where clarity matters more than drama.
- **Body** (400, 16px, 1.6): Core explanatory copy and standard UI reading. Comfortable, practical, and tuned for fast scanning in mobile contexts.
- **Label** (700, 14px, 1.2, 0.5px letter-spacing): Buttons, chips, short metadata, and interactive emphasis. Labels should feel firm and decisive without shouting.

### Named Rules
**The Promise-Then-Proof Rule.** In conversion surfaces, large typography states the benefit first; smaller typography proves it with concrete outcomes like saved time, less forgetting, or better control.

**The No-Theatrical-Type Rule.** This system does not use editorial flourishes, oversized display theatrics, or ornamental pairing. Trust and speed matter more than visual performance.

## 4. Elevation

KipiList uses a light Material elevation model. Most surfaces are visually separated through tonal contrast, radius, and subtle borders first, with shadow or elevation appearing only where interaction or containment benefits from it. The default posture is controlled and stable, not floating.

### Shadow Vocabulary
- **Flat Rest** (`elevation: 0`): Cards and most contained content rest flat and rely on border plus tonal layering for structure.
- **Working Lift** (`elevation: 3`): App bars under scroll, snackbars, dialogs, and interactive emphasis surfaces use a medium Material lift when a stronger layer boundary helps task clarity.
- **Action Lift** (`elevation: 6`): Floating action buttons and stronger interaction affordances use a clearer lift to feel actionable.

### Named Rules
**The Lift-On-Purpose Rule.** Elevation is used to clarify state or interaction, not to make everything feel glossy. If a surface is not changing importance, it should probably not be floating.

## 5. Components

### Buttons
- **Shape:** Large rounded rectangle with a practical 16px radius for standard actions, moving up to 20px in more premium CTA contexts.
- **Primary:** Primary actions should inherit the green-led scheme and feel solid, direct, and easy to trust. Use strong contrast and confident label weight.
- **Hover / Focus:** Focus should be explicit and high-contrast. Emphasis comes from color clarity and outline strength rather than animation flourish.
- **Upgrade / Premium Actions:** Premium CTAs can use amber or premium-adjacent treatment, but only where monetization is the actual decision being made.

### Chips
- **Style:** Full-pill forms with clean fill and no ornamental borders. Chips are compact classifiers or toggles, not decorative stickers.
- **State:** Selected states should read immediately through fill and text contrast, not subtle ghost treatments.

### Cards / Containers
- **Corner Style:** 16px radius for standard cards, 20-28px for dialogs, sheets, and larger promotional containers.
- **Background:** Light mode uses clean near-neutral surfaces. Dark mode uses stepped surface containers to preserve structure without noisy outlines.
- **Shadow Strategy:** Default cards are flat at rest. Borders and tonal separation lead; elevation is secondary.
- **Border:** Thin outline-variant borders are part of the containment language, especially in light mode.
- **Internal Padding:** 24px is the comfortable default for content cards and major containers.

### Inputs / Fields
- **Style:** Filled fields with soft surface tint, no heavy border at rest, and generous 16px internal padding.
- **Focus:** A 2px primary-colored outline is the main focus affordance. Focus should feel visible and competent, not delicate.
- **Error / Disabled:** Error states switch to explicit border treatment. Disabled states should remain readable and never collapse into low-contrast mush.

### Navigation
- **Style:** Navigation should stay structurally familiar, relying on Material 3 patterns such as navigation bars, sheets, list selectors, and app bars.
- **Typography:** Navigation labels should use the same UI family and weight logic as the rest of the product. No separate decorative navigation voice.
- **Active State:** Active navigation should be obvious through color and selection emphasis, not novelty.
- **Mobile Treatment:** Mobile should prioritize reachability, low confusion, and fast recognition over ornamental transitions.

### Monetization Surfaces
- **Role:** Onboarding and paywall surfaces are where the system can become slightly more polished and emotionally charged, but still within the same product vocabulary.
- **Visual Strategy:** Use stronger hierarchy, clearer spacing rhythm, premium amber scarcity, and more assertive value framing rather than introducing a separate visual identity.
- **Tone:** The product is asking for trust and commitment, not staging a spectacle.

## 6. Do's and Don'ts

### Do:
- **Do** keep primary workflows calm, bright, and readable, with one clear action leading each screen.
- **Do** use green as the competence anchor and amber as a monetization accent with deliberate scarcity.
- **Do** let conversion surfaces feel slightly more polished through hierarchy, spacing, and copy emphasis rather than unrelated visual effects.
- **Do** maintain large, friendly touch targets, visible focus states, and AA-level contrast for onboarding and paywall decisions.
- **Do** preserve a single component vocabulary across utility screens and monetization screens so premium moments still feel like the same product.

### Don't:
- **Don't** make the app feel like a heavy financial control panel before the user has even seen shopping value.
- **Don't** make the AI feel like generic "magic" through vague claims, futuristic styling, or hype-heavy copy that does not prove utility.
- **Don't** build noisy paywalls with too many competing badges, highlights, nested cards, or aggressive visual interruptions before value is shown.
- **Don't** use premium amber as a decorative filler on ordinary actions or background surfaces.
- **Don't** introduce showy gradients, glassmorphism, or unrelated luxury aesthetics that weaken the product's trust-first posture.
