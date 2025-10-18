# Astro Agent Template

> **⚠️ IMPORTANT: This is a scaffolding project template for websites. It should be forked or copied by systems using this as a template. Do not clone and push changes to this repo unless you intend to change the template.**

## Overview

This repository serves as a comprehensive template for building modern, performant websites using Astro.js with TypeScript, Tailwind CSS, and atomic component design principles. It includes a complete development workflow with constitution-driven standards and automated tooling.

## 🚀 Quick Start

### Option 1: Use as Template (Recommended)
1. Click the "Use this template" button on GitHub
2. Create a new repository from this template
3. Clone your new repository
4. Follow the setup instructions below

### Option 2: Fork the Repository
1. Fork this repository to your organization
2. Clone the forked repository
3. Follow the setup instructions below

### Option 3: Copy Files
1. Download or clone this repository
2. Copy the files to your new project directory
3. Remove the `.git` directory and initialize a new repository
4. Follow the setup instructions below

## 🛠️ Technology Stack

- **Framework**: [Astro.js](https://astro.build/) - Modern static site generator
- **Language**: TypeScript with strict type checking
- **Styling**: Tailwind CSS with atomic design principles
- **Testing**: Snapshot testing for rendered pages
- **Linting**: ESLint with Airbnb standards
- **Architecture**: Atomic component design (atoms → molecules → organisms → templates → pages)

## 📁 Project Structure

```
astro-agent-template/
├── .specify/                    # Development workflow templates
│   ├── memory/
│   │   └── constitution.md      # Project constitution and standards
│   ├── templates/               # Template files for planning
│   └── scripts/                 # Automation scripts
├── .cursor/                     # Cursor IDE commands
├── src/
│   ├── components/              # Atomic component hierarchy
│   │   ├── atoms/              # Basic building blocks
│   │   ├── molecules/          # Simple component combinations
│   │   ├── organisms/          # Complex UI sections
│   │   └── templates/          # Page layouts
│   ├── pages/                  # Astro pages
│   ├── styles/                 # Global styles
│   └── utils/                  # Utility functions
├── tests/                       # Snapshot tests
└── README.md
```

## 🏗️ Development Workflow

This template includes a constitution-driven development workflow with the following commands:

- `/speckit.specify` - Create feature specifications
- `/speckit.plan` - Generate implementation plans
- `/speckit.tasks` - Create actionable task lists
- `/speckit.constitution` - Update project standards

## 📋 Core Principles

### 1. Atomic Component Design (NON-NEGOTIABLE)
- Clear hierarchy: atoms → molecules → organisms → templates → pages
- Self-contained, reusable components
- Single responsibility principle
- Maximum 200 lines per component

### 2. TypeScript-First Development
- Strict type checking enabled
- No `any` types without justification
- ESLint with Airbnb standards
- Comprehensive type documentation

### 3. Snapshot Testing (NON-NEGOTIABLE)
- Test-driven development approach
- Snapshot tests for all pages and components
- Tests written before implementation
- Intentional test updates only

### 4. Tailwind CSS Standards
- Utility-first styling approach
- Mobile-first responsive design
- Consistent design tokens
- No custom CSS except where necessary

### 5. Astro.js Architecture
- Server-side rendering by default
- Static generation preferred
- Framework islands for interactivity
- Performance budget compliance

## 🚀 Getting Started

### Prerequisites
- Node.js 18+ 
- npm or yarn
- Git

### Installation

1. **Clone your new repository**:
   ```bash
   git clone <your-repo-url>
   cd <your-project-name>
   ```

2. **Install dependencies**:
   ```bash
   npm install
   # or
   yarn install
   ```

3. **Start development server**:
   ```bash
   npm run dev
   # or
   yarn dev
   ```

4. **Open your browser**:
   Navigate to `http://localhost:4321`

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint
- `npm run test` - Run snapshot tests
- `npm run test:update` - Update snapshots

## 🧪 Testing

This template uses snapshot testing as the primary testing strategy:

```bash
# Run all tests
npm run test

# Update snapshots (use with caution)
npm run test:update

# Run tests in watch mode
npm run test:watch
```

## 📏 Performance Standards

- **First Contentful Paint**: < 1.5s
- **Largest Contentful Paint**: < 2.5s
- **Cumulative Layout Shift**: < 0.1
- **First Input Delay**: < 100ms
- **Bundle Size**: < 100KB gzipped per page

## 🎨 Design System

The template follows atomic design principles with Tailwind CSS:

- **Atoms**: Buttons, inputs, labels, icons
- **Molecules**: Search forms, navigation items, cards
- **Organisms**: Headers, sidebars, content areas
- **Templates**: Page layouts without content
- **Pages**: Specific instances with real content

## 📚 Documentation

- [Astro.js Documentation](https://docs.astro.build/)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [TypeScript Documentation](https://www.typescriptlang.org/docs/)
- [Atomic Design Methodology](https://bradfrost.com/blog/post/atomic-web-design/)

## 🤝 Contributing

**⚠️ IMPORTANT**: This is a template repository. Only contribute if you're improving the template itself.

If you want to contribute to the template:

1. Fork this repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

This template is provided under the MIT License. See the [LICENSE](LICENSE) file for details.

## 🆘 Support

For questions about using this template:

1. Check the [Issues](../../issues) for common questions
2. Create a new issue if your question isn't answered
3. For template improvements, follow the contributing guidelines above

## 🔄 Template Updates

To get the latest template updates:

1. Check the [releases](../../releases) for new versions
2. Compare your fork with the template
3. Merge or cherry-pick desired changes
4. Update your project accordingly

---

**Remember**: This is a template repository. Use it as a starting point for your projects, not as a project to contribute to directly.
