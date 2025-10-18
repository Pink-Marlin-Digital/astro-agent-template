# Development Setup

This document explains how to set up and develop with the Astro Agent Template.

## Prerequisites

- Node.js 18+ 
- npm or yarn
- Git

## Quick Start

1. **Install dependencies**:
   ```bash
   npm install
   ```

2. **Start development server**:
   ```bash
   npm run dev
   ```

3. **Open your browser**:
   Navigate to `http://localhost:4321`

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint
- `npm run lint:fix` - Fix ESLint issues
- `npm run test` - Run snapshot tests
- `npm run test:update` - Update snapshots
- `npm run test:watch` - Run tests in watch mode

## Project Structure

```
src/
├── components/
│   ├── atoms/          # Basic building blocks
│   ├── molecules/      # Simple component combinations
│   ├── organisms/      # Complex UI sections
│   └── templates/      # Page layouts
├── pages/              # Astro pages
├── styles/             # Global styles
└── utils/              # Utility functions
```

## Development Standards

This project follows strict development standards defined in the constitution:

### Atomic Component Design
- **Atoms**: Basic building blocks (Button, Input, Label, Icon, Heading)
- **Molecules**: Simple combinations (SearchForm, NavigationItem, Card, FormField)
- **Organisms**: Complex UI sections (Headers, Sidebars, Content areas)
- **Templates**: Page layouts without content
- **Pages**: Specific instances with real content

### TypeScript Standards
- Strict type checking enabled
- No `any` types without justification
- All interfaces and types properly documented
- ESLint with Airbnb standards

### Testing Standards
- Snapshot testing for all pages and components
- Tests written before implementation (TDD)
- Test files co-located with components
- 100% test coverage for pages, 80% for components

### Styling Standards
- Tailwind CSS utility classes only
- Mobile-first responsive design
- Consistent design tokens
- No custom CSS except where necessary

## Component Development

### Creating New Components

1. **Atoms**: Create in `src/components/atoms/`
2. **Molecules**: Create in `src/components/molecules/`
3. **Organisms**: Create in `src/components/organisms/`
4. **Templates**: Create in `src/components/templates/`

### Component Requirements

- Single responsibility principle
- Maximum 200 lines per component
- Proper TypeScript interfaces
- Accessibility compliance
- Snapshot tests

### Testing Components

```bash
# Run all tests
npm run test

# Update snapshots
npm run test:update

# Watch mode
npm run test:watch
```

## Performance Standards

- First Contentful Paint: < 1.5s
- Largest Contentful Paint: < 2.5s
- Cumulative Layout Shift: < 0.1
- First Input Delay: < 100ms
- Bundle size per page: < 100KB gzipped

## Code Quality

### Pre-commit Requirements
- ESLint must pass with zero errors
- TypeScript compilation must succeed
- All snapshot tests must pass
- No console.log or debug statements

### Commit Standards
- Conventional commits format
- Atomic and focused commits
- Reference issue numbers
- All commits must be signed

## Troubleshooting

### Common Issues

1. **ESLint errors**: Run `npm run lint:fix`
2. **TypeScript errors**: Check for missing types or interfaces
3. **Test failures**: Update snapshots with `npm run test:update`
4. **Build errors**: Check for missing dependencies

### Getting Help

1. Check the [Issues](../../issues) for common questions
2. Create a new issue if your question isn't answered
3. Review the constitution in `.specify/memory/constitution.md`
