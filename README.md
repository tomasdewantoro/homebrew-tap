# tomasdewantoro/homebrew-tap

Homebrew casks for Tomas Dewantoro's macOS apps. Every build is signed with a Developer ID and
notarized by Apple. `brew upgrade --cask <name>` picks up new releases once this tap is updated.

## Slonview

[Slonview](https://slonview.com) is a small read-only-by-default viewer for PostgreSQL®.

```bash
brew install --cask tomasdewantoro/tap/slonview
```

`brew uninstall --zap --cask slonview` also removes saved connection profiles and app data. Passwords stay in the macOS Keychain under the service `slonview`; delete them in Keychain Access if you want them gone too.

## Caffeinous

[Caffeinous](https://github.com/tomasdewantoro/caffeinous) is a menu bar app that keeps your Mac awake, even with the lid closed.

```bash
brew install --cask tomasdewantoro/tap/caffeinous
```

`brew uninstall --zap --cask caffeinous` also removes its preferences and app data.
