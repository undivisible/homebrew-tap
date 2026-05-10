# homebrew-tap

Personal Homebrew formulae.

## vro

Minimal terminal text editor: [undivisible/vro](https://github.com/undivisible/vro). Installs **prebuilt** binaries from GitHub Releases (same pattern as [inauguration](https://github.com/semitechnological/inauguration) + wax/brew parity).

```sh
wax tap undivisible/tap
wax install vro
```

```sh
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install vro
```

Release assets include `*.sha256` for manual verification (`shasum -a 256 -c …`).

**v0.3.0:** until the GitHub release is published, `Formula/vro.rb` may still carry placeholder `sha256` values — run `bash /path/to/vro/scripts/print-release-shas.sh v0.3.0` after the tag build finishes and paste the hashes before relying on `brew install vro`.
