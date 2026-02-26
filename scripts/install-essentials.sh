#!/bin/bash
# Kickstart Essential Skills Installer
# Run this after installing the Kickstart skill to get the recommended companion skills.

echo "🚀 Kickstart — Installing essential companion skills..."
echo ""

# qmd — Local search/indexing for memory files (BM25 + vectors + rerank)
# This supercharges your agent's memory search. Instead of loading entire files,
# your agent can search across all memory files and pull only what's relevant.
echo "📎 Installing qmd (local memory search)..."
npx clawhub install qmd 2>/dev/null && echo "   ✅ qmd installed" || echo "   ⚠️  qmd failed — install manually: npx clawhub install qmd"

# github — GitHub CLI integration for repos, issues, PRs
echo "📎 Installing github skill..."
npx clawhub install github 2>/dev/null && echo "   ✅ github installed" || echo "   ⚠️  github failed — install manually: npx clawhub install github"

echo ""
echo "✅ Done! Essential skills installed."
echo ""
echo "Optional skills you might want:"
echo "  npx clawhub install google-calendar  — Google Calendar integration"
echo "  npx clawhub install weather           — Weather forecasts (no API key needed)"
echo ""
echo "Run 'npx clawhub list' to see what's installed."
