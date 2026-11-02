# homebrew-tap

Homebrew tap for [DepRadar](https://github.com/depradar-app/depradar).

## Install

```bash
brew install depradar-app/tap/depradar
```

or:

```bash
brew tap depradar-app/tap
brew install --cask depradar
```

## Maintaining the cask

`Casks/depradar.rb` is **regenerated automatically** by the
[`Bump Homebrew cask`](https://github.com/depradar-app/depradar/blob/main/.github/workflows/bump-homebrew-cask.yml)
workflow of `depradar`, each time a release is published: it rewrites the
version, the checksum and the `.dmg` file name, and refuses to move the cask
to an older version than the one it already has.

Nothing needs to be edited by hand. The release workflow builds a universal
(Apple Silicon + Intel) macOS app; until the first such release is published
the cask still points at the Apple Silicon-only v0.6.1 build, and declares
`depends_on arch: :arm64` so that Intel Macs get a clear error instead of an
app that won't start.
