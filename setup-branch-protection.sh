#!/bin/bash

# Setup Branch Protection Rules for astro-agent-template
# This script sets up branch protection rules that require PRs before merging

set -e

# Configuration
ORG="Pink-Marlin-Digital"
REPO="astro-agent-template"
BRANCH="main"

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "Please install it from: https://cli.github.com/"
    echo "Or run: brew install gh"
    exit 1
fi

# Check if user is authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ Not authenticated with GitHub CLI."
    echo "Please run: gh auth login"
    exit 1
fi

echo "🔧 Setting up branch protection rules for $ORG/$REPO..."

# Set branch protection rules
gh api \
  --method PUT \
  -H "Accept: application/vnd.github+json" \
  "/repos/$ORG/$REPO/branches/$BRANCH/protection" \
  -f required_status_checks='{"strict":true,"contexts":[]}' \
  -f enforce_admins=true \
  -f required_pull_request_reviews='{"required_approving_review_count":1,"dismiss_stale_reviews":true,"require_code_owner_reviews":false}' \
  -f restrictions=null

echo "✅ Branch protection rules set successfully!"
echo ""
echo "📋 Protection rules applied:"
echo "  - Require pull request reviews before merging"
echo "  - Require at least 1 approving review"
echo "  - Dismiss stale reviews when new commits are pushed"
echo "  - Include administrators in protection rules"
echo "  - Require branches to be up to date before merging"
echo ""
echo "🔗 Repository: https://github.com/$ORG/$REPO"
echo "🔗 Settings: https://github.com/$ORG/$REPO/settings/branches"
