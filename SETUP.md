# Repository Setup Guide

This guide explains how to set up the `astro-agent-template` repository with proper branch protection rules.

## Repository Information

- **Organization**: Pink-Marlin-Digital
- **Repository**: astro-agent-template
- **URL**: https://github.com/Pink-Marlin-Digital/astro-agent-template
- **Purpose**: Template repository for Astro.js projects

## Branch Protection Setup

### Option 1: Using GitHub CLI (Recommended)

If you have GitHub CLI installed:

```bash
# Make the script executable
chmod +x setup-branch-protection.sh

# Run the setup script
./setup-branch-protection.sh
```

### Option 2: Manual Setup via GitHub Web Interface

1. Navigate to: https://github.com/Pink-Marlin-Digital/astro-agent-template/settings/branches
2. Click "Add rule" or "Add protection rule"
3. Configure the following settings:
   - **Branch name pattern**: `main`
   - **Require a pull request before merging**: ✅ Enabled
     - **Required number of reviewers**: 1
     - **Dismiss stale PR approvals when new commits are pushed**: ✅ Enabled
     - **Require review from code owners**: ❌ Disabled
   - **Require status checks to pass before merging**: ✅ Enabled
     - **Require branches to be up to date before merging**: ✅ Enabled
   - **Include administrators**: ✅ Enabled
   - **Restrict pushes that create files**: ❌ Disabled
   - **Allow force pushes**: ❌ Disabled
   - **Allow deletions**: ❌ Disabled

### Option 3: Using GitHub API

If you prefer to use the GitHub API directly:

```bash
curl -X PUT \
  -H "Authorization: token YOUR_ACCESS_TOKEN" \
  -H "Accept: application/vnd.github+json" \
  https://api.github.com/repos/Pink-Marlin-Digital/astro-agent-template/branches/main/protection \
  -d '{
    "required_status_checks": {
      "strict": true,
      "contexts": []
    },
    "enforce_admins": true,
    "required_pull_request_reviews": {
      "required_approving_review_count": 1,
      "dismiss_stale_reviews": true,
      "require_code_owner_reviews": false
    },
    "restrictions": null
  }'
```

## Verification

After setting up branch protection rules, verify they are working:

1. Create a new branch: `git checkout -b test-branch`
2. Make a small change and commit: `git commit -m "test change"`
3. Push the branch: `git push origin test-branch`
4. Try to merge directly to main - this should be blocked
5. Create a pull request instead - this should be allowed

## Template Usage

### For Users (Template Consumers)

Users should:

1. **Use the "Use this template" button** on GitHub (recommended)
2. **Fork the repository** to their own organization
3. **Copy the files** to a new project directory

### For Maintainers (Template Updates)

Maintainers should:

1. **Never push directly to main** - always use pull requests
2. **Follow the constitution** defined in `.specify/memory/constitution.md`
3. **Update templates** when making changes to the workflow
4. **Test changes** in a fork before updating the template

## Important Notes

- This is a **template repository** - it should be used as a starting point
- **Do not clone and push changes** unless you're updating the template itself
- The repository includes comprehensive development standards and workflows
- All changes must go through pull request review process
- The constitution defines the development principles and standards

## Support

For questions about this template:

1. Check the [Issues](https://github.com/Pink-Marlin-Digital/astro-agent-template/issues) for common questions
2. Create a new issue if your question isn't answered
3. For template improvements, follow the contributing guidelines in the README
