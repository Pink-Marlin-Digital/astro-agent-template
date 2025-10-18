<!--
Sync Impact Report:
Version change: 0.0.0 → 1.0.0
Modified principles: All placeholders replaced with concrete principles
Added sections: Frontend Architecture Standards, Code Quality & Standards, Development Workflow
Templates requiring updates: ✅ plan-template.md, ✅ spec-template.md, ✅ tasks-template.md
Follow-up TODOs: None - all placeholders resolved
-->

# Astro Agent Template Constitution

## Core Principles

### I. Atomic Component Design (NON-NEGOTIABLE)
All UI components MUST follow atomic design theory with clear hierarchy: atoms → molecules → organisms → templates → pages. Each component must be self-contained, reusable, and independently testable. Components must have single responsibility and clear interfaces. No component may exceed 200 lines of code without justification.

### II. TypeScript-First Development
All code MUST be written in TypeScript with strict type checking enabled. No `any` types allowed without explicit justification. All interfaces, types, and enums must be properly documented. ESLint with Airbnb standards MUST pass on every commit. Type safety is non-negotiable for maintainability and developer experience.

### III. Snapshot Testing (NON-NEGOTIABLE)
The ONLY testing approach allowed is snapshot testing of rendered pages. All pages MUST have corresponding snapshot tests that capture the complete rendered output. Tests must be written before implementation (TDD). Snapshot tests must be updated intentionally and only when the change is known and purposeful. No test modifications allowed without explicit justification.

### IV. Tailwind CSS Standards
All styling MUST use Tailwind CSS utility classes. No custom CSS files allowed except for component-specific styles that cannot be achieved with Tailwind. Design system must be consistent with atomic component hierarchy. Responsive design must be mobile-first. All color schemes, spacing, and typography must follow established design tokens.

### V. Astro.js Architecture
All pages and components MUST follow Astro.js best practices. Server-side rendering is the default. Client-side interactivity must be explicitly added via framework islands. Static generation preferred over dynamic rendering. All routes must be statically analyzable. Performance budgets must be maintained for Core Web Vitals.

## Frontend Architecture Standards

### Component Structure
- **Atoms**: Basic building blocks (buttons, inputs, labels) - single file per component
- **Molecules**: Simple combinations of atoms (search forms, navigation items) - single file per component  
- **Organisms**: Complex UI sections (headers, sidebars, content areas) - may have sub-components
- **Templates**: Page layouts without content - define structure and component placement
- **Pages**: Specific instances of templates with real content

### File Organization
```
src/
├── components/
│   ├── atoms/
│   ├── molecules/
│   ├── organisms/
│   └── templates/
├── pages/
├── styles/
└── utils/
```

### Performance Requirements
- First Contentful Paint: < 1.5s
- Largest Contentful Paint: < 2.5s
- Cumulative Layout Shift: < 0.1
- First Input Delay: < 100ms
- Bundle size per page: < 100KB gzipped

## Code Quality & Standards

### ESLint Configuration
- Airbnb TypeScript configuration (base + TypeScript rules)
- Strict mode enabled for all TypeScript files
- Import/export rules enforced
- Accessibility rules enabled (jsx-a11y)
- React hooks rules enabled
- No console.log statements in production code

### Code Review Requirements
- All PRs must pass ESLint checks
- All snapshot tests must pass
- TypeScript compilation must succeed
- No `any` types without explicit justification
- Component props must be properly typed
- All functions must have return type annotations

### Testing Standards
- Snapshot tests for all pages
- Snapshot tests for all template components
- Test files must be co-located with components
- Test naming: `[component-name].test.astro`
- Snapshot updates require explicit approval
- Test coverage: 100% of pages, 80% of components

## Development Workflow

### Pre-commit Requirements
- ESLint must pass with zero errors
- TypeScript compilation must succeed
- All snapshot tests must pass
- No console.log or debug statements
- All imports must be properly typed

### Commit Standards
- Conventional commits format required
- Each commit must be atomic and focused
- Commit messages must reference issue numbers
- No merge commits without explicit approval
- All commits must be signed

### Deployment Pipeline
- All checks must pass before deployment
- Snapshot tests must pass in CI/CD
- Build must complete successfully
- Performance budgets must be maintained
- Accessibility audits must pass

## Governance

This constitution supersedes all other development practices and standards. Amendments require:
1. Documentation of the proposed change
2. Impact analysis on existing codebase
3. Migration plan for breaking changes
4. Approval from project maintainers
5. Update to all dependent templates and documentation

All PRs and code reviews must verify compliance with these principles. Complexity must be justified with clear rationale. Use `.specify/templates/` for runtime development guidance.

**Version**: 1.0.0 | **Ratified**: 2025-01-27 | **Last Amended**: 2025-01-27
