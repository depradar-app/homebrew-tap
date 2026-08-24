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

`Casks/depradar.rb` currently points at Apple Silicon (`aarch64`) builds only,
matching the single `macos-latest` runner in
[`depradar`'s release workflow](https://github.com/depradar-app/depradar/blob/main/.github/workflows/release.yml) —
Intel Macs aren't covered until that workflow builds an `x64` (or universal)
artifact too.

After each tagged release of `depradar`:

1. Bump `version` in `Casks/depradar.rb` to match the new tag.
2. Replace `sha256 :no_check` with the real checksum of the released `.dmg`:
   ```bash
   shasum -a 256 depradar_<version>_aarch64.dmg
   ```
3. Commit and push.
