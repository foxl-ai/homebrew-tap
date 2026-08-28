# Homebrew Foxl

Homebrew tap for [Foxl](https://foxl.ai), a personal AI agent for macOS.

## Install via Homebrew (recommended)

```bash
brew install --cask foxl-ai/tap/foxl
```

The fully qualified cask name lets Homebrew trust only Foxl instead of every
cask that may be added to the tap. It also taps this repository for you, so a
separate `brew tap foxl-ai/tap` is not required.

## Updates

Foxl updates itself in place. `brew upgrade` is a no-op unless you pass
`--greedy`. `brew uninstall --cask foxl` still works normally.

## About this repository

This tap is generated automatically by Foxl's private release pipeline from the
published release metadata and GitHub's SHA-256 asset digest. Do not hand-edit it.

## Supply chain

The protected `main` branch accepts updates only from the `foxl-bot` GitHub
App. The private release pipeline accepts only the latest published Foxl
release and GitHub's SHA-256 digest, then creates a GitHub-signed bot commit.
Pull requests require CODEOWNER approval and cannot update `main` directly.
