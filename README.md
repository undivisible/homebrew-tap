# homebrew-tap

Personal Homebrew formulae for [undivisible](https://github.com/undivisible).

## Packages

| Formula | Description |
| --- | --- |
| `wax` | Fast Homebrew-compatible package manager ([plyght/wax](https://github.com/plyght/wax)) |
| `vro` | Minimal terminal text editor ([undivisible/vro](https://github.com/undivisible/vro)) |
| `folk-around` | MCP agent for computer control ([undivisible/folk-around](https://github.com/undivisible/folk-around)) |
| `poke-around` | Expose your machine to your Poke AI assistant via an MCP tunnel ([undivisible/poke-around](https://github.com/undivisible/poke-around)) |
| `drift-wallpaper` | Fluid live wallpaper for macOS, Windows, and Linux ([undivisible/drift-wallpaper](https://github.com/undivisible/drift-wallpaper)) |
| `apollo` | Lightweight AI agent runtime / openclaw for builders ([tschk/apollo](https://github.com/tschk/apollo); formerly `unthinkclaw`) |
| `rs-peekaboo` | Rust-native cross-platform computer-use CLI and library ([undivisible/rs_peekaboo](https://github.com/undivisible/rs_peekaboo)) |
| `herdr-gui` | macOS GUI for Herdr (Apple Silicon) ([undivisible/herdr-gui](https://github.com/undivisible/herdr-gui)) |
| `rx4` | Agent harness engine — loop, tools, providers, sessions, permissions, computer-use ([tschk/rotary](https://github.com/tschk/rotary)) |
| `tk` | AI coding agent TUI — rx4 harness + crepuscularity-tui ([tschk/telekinesis](https://github.com/tschk/telekinesis)) |
| `oil` | Native Linux package manager with system-PM interop ([semitechnological/oil](https://github.com/semitechnological/oil)) |
| `inauguration` | Multi-language compiler with JIT, Core IR, and 40 frontends ([tschk/inauguration](https://github.com/tschk/inauguration)) |

`poke-around` is a community project — not affiliated with Poke or The Interaction Company.

## Install

Install [wax](https://github.com/plyght/wax) first (this tap cannot bootstrap it from nothing):

```sh
curl -fsSL https://raw.githubusercontent.com/plyght/wax/master/install.sh | bash
```

Or `cargo install waxpkg`.

Wax auto-adds this tap when you install a formula from it. No extra trust step.

```sh
wax install undivisible/tap/vro
```

List every package in the tap:

```sh
wax tap list undivisible/tap
```

Add the tap without installing a package:

```sh
wax tap add undivisible/tap
# shorthand:
wax tap undivisible/tap
```

After the tap is present, short names work too:

```sh
wax install vro
```

### Homebrew

```sh
brew tap undivisible/tap
# or, with an explicit URL:
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install vro
```

## Notes

- **vro** installs prebuilt GitHub Release binaries. Release assets include `*.sha256` for manual checks (`shasum -a 256 -c …`). Refresh formula checksums with `bash /path/to/vro/scripts/print-release-shas.sh v1.2.3` (example).
- **apollo** replaces the old `unthinkclaw` formula. The GitHub repo `undivisible/unthinkclaw` redirects to `tschk/apollo`; install with `wax install apollo` / `brew install apollo`.
- **herdr-gui** is macOS Apple Silicon only (upstream ships no Intel bottle).
- **oil** builds from source and needs a Rust toolchain.
- **inauguration** currently ships macOS ARM and Linux x86_64 bottles (no macOS Intel asset upstream).
- **Missing macOS Intel bottles:** upstream releases currently omit macOS x86_64 for `vro`, `folk-around`, `inauguration`, and `herdr-gui`. Formulae only list platforms that have live release assets — do not invent Intel URLs/checksums.
- **Version lag:** some formulae can trail GitHub “latest” (or temporarily look ahead if a tag is unpublished). Run `bash scripts/audit-formulas.sh` (add `--strict` in CI to fail on stale). Prefer verified one-off bumps over mass-bumping every formula.
