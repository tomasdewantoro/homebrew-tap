# tomasdewantoro/homebrew-tap

Homebrew casks for [Slonview](https://slonview.com), a small read-only-by-default viewer for PostgreSQL®.

```bash
brew install --cask tomasdewantoro/tap/slonview
```

The macOS builds are signed with a Developer ID and notarized by Apple. `brew upgrade --cask slonview` picks up new releases once this tap is updated.

`brew uninstall --zap --cask slonview` also removes saved connection profiles and app data. Passwords stay in the macOS Keychain under the service `slonview`; delete them in Keychain Access if you want them gone too.
