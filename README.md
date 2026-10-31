# Commit+ Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Commit+](https://github.com/Commit-Plus/commit-plus), a fast, native Git client for macOS.

## Install

```bash
brew tap commit-plus/tap
brew trust --tap commit-plus/tap
brew install --cask commit-plus
```

Recent Homebrew versions refuse to load casks from third-party taps until you trust them; `brew trust` is only needed once. On older Homebrew without `brew trust`, skip that line.

**Requirements:** macOS 26.2 or later on Apple silicon.

## Update

Commit+ updates itself through its built-in updater (Sparkle), so Homebrew skips it during a plain `brew upgrade`. To upgrade through Homebrew anyway:

```bash
brew upgrade --cask --greedy commit-plus
```

## Uninstall

```bash
brew uninstall --cask commit-plus
```

To also remove local app data (settings, caches, local database):

```bash
brew uninstall --cask --zap commit-plus
```

## How this tap is maintained

The cask points at the signed and notarized DMG published on each [Commit+ release](https://github.com/Commit-Plus/commit-plus/releases). A GitHub Actions workflow (`.github/workflows/bump-cask.yml`) checks for new releases every six hours, updates `version` and `sha256`, and commits the change. It can also be run manually from the Actions tab.

## Issues

Report problems with the app in the [Commit+ repository](https://github.com/Commit-Plus/commit-plus/issues). Open an issue here only for problems with the cask itself.

## License

[AGPL-3.0](LICENSE)
