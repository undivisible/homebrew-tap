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
| `unthinkclaw` | Local-first Rust agent runtime ([undivisible/unthinkclaw](https://github.com/undivisible/unthinkclaw)) |
| `rs-peekaboo` | Rust-native cross-platform computer-use CLI and library ([undivisible/rs_peekaboo](https://github.com/undivisible/rs_peekaboo)) |
| `herdr-gui` | macOS GUI for Herdr ([undivisible/herdr-gui](https://github.com/undivisible/herdr-gui)) |
| `rx4` | Agent harness engine — loop, tools, providers, sessions, permissions, computer-use ([tschk/rotary](https://github.com/tschk/rotary)) |
| `tk` | AI coding agent TUI — rx4 harness + crepuscularity-tui ([semitechnological/telekinesis](https://github.com/semitechnological/telekinesis)) |
| `oil` | Native Linux package manager with system-PM interop ([semitechnological/oil](https://github.com/semitechnological/oil)) |
| `inauguration` | Multi-language compiler with JIT, Core IR, and 40 frontends ([tschk/inauguration](https://github.com/tschk/inauguration)) |

## Install

### wax

Wax auto-adds this tap when you install a formula from it. No `wax tap add` or trust step.

```sh
wax install undivisible/tap/vro
```

List every package in the tap:

```sh
wax tap list undivisible/tap
```

Add the tap without installing anything:

```sh
wax tap undivisible/tap
# or:
wax install undivisible/tap
```

After the tap is present, short names work too:

```sh
wax install vro
```

### Homebrew

```sh
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install vro
```

## Formulae

### vro

Minimal terminal text editor: [undivisible/vro](https://github.com/undivisible/vro). Installs **prebuilt** binaries from GitHub Releases (same pattern as inauguration + wax/brew parity).

```sh
wax install undivisible/tap/vro
```

Release assets include `*.sha256` for manual verification (`shasum -a 256 -c …`).

Formula checksums are refreshed when tagging a new `v*` release: `bash /path/to/vro/scripts/print-release-shas.sh v1.2.3` (example).

### wax

Fast, modern package manager leveraging Homebrew's ecosystem: [plyght/wax](https://github.com/plyght/wax). Built in Rust for speed and reliability, with parallel installation workflows and third-party tap support.

```sh
wax install undivisible/tap/wax
```

### folk-around

Rust MCP agent for computer control: [undivisible/folk-around](https://github.com/undivisible/folk-around). Self-contained release binary that speaks the [Model Context Protocol](https://modelcontextprotocol.io) — shell, accessibility, clipboard, files, and `rs_peekaboo`-backed macOS automation over stdio, HTTP SSE, or Cloudflare signaling.

```sh
wax install undivisible/tap/folk-around
```

### drift-wallpaper

Fluid live wallpaper for macOS, Windows, and Linux: [undivisible/drift-wallpaper](https://github.com/undivisible/drift-wallpaper). Inspired by [sandydoo/flux](https://github.com/sandydoo/flux).

```sh
wax install undivisible/tap/drift-wallpaper
```

### poke-around

Expose your machine to your Poke AI assistant via an MCP tunnel: [undivisible/poke-around](https://github.com/undivisible/poke-around). Community project — not affiliated with Poke or The Interaction Company.

```sh
wax install undivisible/tap/poke-around
```

### unthinkclaw

Local-first Rust agent runtime: [undivisible/unthinkclaw](https://github.com/undivisible/unthinkclaw). Small, async-first, uses SurrealDB + RocksDB as the primary state layer.

```sh
wax install undivisible/tap/unthinkclaw
```

### rs-peekaboo

Rust-native cross-platform computer-use CLI and library: [undivisible/rs_peekaboo](https://github.com/undivisible/rs_peekaboo).

```sh
wax install undivisible/tap/rs-peekaboo
```

### herdr-gui

macOS GUI for Herdr: [undivisible/herdr-gui](https://github.com/undivisible/herdr-gui).

```sh
wax install undivisible/tap/herdr-gui
```

### rx4

Agent harness engine — loop, tools, providers, sessions, permissions, computer-use, pi protocol compatible: [tschk/rotary](https://github.com/tschk/rotary).

```sh
wax install undivisible/tap/rx4
```

### tk

AI coding agent TUI — rx4 harness + crepuscularity-tui: [semitechnological/telekinesis](https://github.com/semitechnological/telekinesis).

```sh
wax install undivisible/tap/tk
```

### oil

Native Linux package manager with system-PM interop: [semitechnological/oil](https://github.com/semitechnological/oil).

```sh
wax install undivisible/tap/oil
```

### inauguration

Multi-language compiler with JIT, Core IR, and 40 frontends: [tschk/inauguration](https://github.com/tschk/inauguration).

```sh
wax install undivisible/tap/inauguration
```
