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
| `unthinkclaw` | Lightweight AI agent runtime ([undivisible/unthinkclaw](https://github.com/undivisible/unthinkclaw)) |
| `rs-peekaboo` | Rust-native cross-platform computer-use CLI and library ([undivisible/rs_peekaboo](https://github.com/undivisible/rs_peekaboo)) |
| `herdr-gui` | macOS GUI for Herdr (Apple Silicon) ([undivisible/herdr-gui](https://github.com/undivisible/herdr-gui)) |
| `rx4` | Agent harness engine — loop, tools, providers, sessions, permissions, computer-use ([tschk/rotary](https://github.com/tschk/rotary)) |
| `tk` | AI coding agent TUI — rx4 harness + crepuscularity-tui ([tschk/telekinesis](https://github.com/tschk/telekinesis)) |
| `oil` | Native Linux package manager with system-PM interop ([semitechnological/oil](https://github.com/semitechnological/oil)) |
| `inauguration` | Multi-language compiler with JIT, Core IR, and 40 frontends ([tschk/inauguration](https://github.com/tschk/inauguration)) |

`poke-around` is a community project — not affiliated with Poke or The Interaction Company.

## Install

Two install paths are supported — **wax** (default, this tap's native package manager) and **Homebrew**. Pick one; don't mix both for the same formula.

### Wax

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

The Homebrew path is an alternative to wax — use it only if you already have [Homebrew](https://brew.sh) installed:

```sh
brew tap undivisible/tap
# or, with an explicit URL:
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install vro
```

Once tapped, short names work: `brew install undivisible/tap/vro` and `brew install vro` are equivalent.

## Notes

### Platform coverage

Prebuilt binaries are only published for the platforms listed below; source-built formulae install anywhere a Rust toolchain exists.

| Formula | Prebuilt platforms | Notes |
| --- | --- | --- |
| `wax` | — | builds from source, needs Rust |
| `vro` | macOS ARM, Linux x86_64 + ARM | |
| `folk-around` | macOS ARM, Linux x86_64 + ARM | |
| `poke-around` | macOS Intel + ARM, Linux x86_64 + ARM | |
| `drift-wallpaper` | macOS ARM, Linux x86_64 | |
| `unthinkclaw` | macOS Intel + ARM, Linux x86_64 | |
| `rs-peekaboo` | — | builds from source, needs Rust |
| `herdr-gui` | macOS ARM | Apple Silicon only |
| `rx4` | — | builds from source, needs Rust |
| `tk` | macOS Intel + ARM, Linux x86_64 + ARM | |
| `oil` | — | Linux-native, builds from source, needs Rust |
| `inauguration` | macOS ARM, Linux x86_64 | |

### Verification

- **vro** installs prebuilt GitHub Release binaries. Release assets include `*.sha256` for manual checks (`shasum -a 256 -c …`). Refresh formula checksums with `bash /path/to/vro/scripts/print-release-shas.sh v1.2.3` (example).
- **oil** builds from source and needs a Rust toolchain.

### Auditing the tap

`scripts/audit-formulas.sh` checks every formula for Ruby syntax and for staleness (pinned version vs. the latest GitHub release tag). It needs `ruby` (for `ruby -c`) and an authenticated GitHub CLI (`gh`, for `gh release view`):

```sh
bash scripts/audit-formulas.sh              # report only
bash scripts/audit-formulas.sh --strict     # exit non-zero if any formula is stale
```
