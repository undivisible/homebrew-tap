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

Formula checksums are refreshed when tagging a new `v*` release: `bash /path/to/vro/scripts/print-release-shas.sh v0.3.1` (example).

## wax

Fast, modern package manager leveraging Homebrew's ecosystem: [tschk/wax](https://github.com/tschk/wax). Built in Rust for speed and reliability, provides 16-20x faster search operations and parallel installation workflows.

```sh
wax tap undivisible/tap
wax install wax
```

```sh
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install wax
```

## folk-around

Rust MCP agent for computer control: [undivisible/folk-around](https://github.com/undivisible/folk-around). Self-contained release binary that speaks the [Model Context Protocol](https://modelcontextprotocol.io) — shell, accessibility, clipboard, files, and `rs_peekaboo`-backed macOS automation over stdio, HTTP SSE, or Cloudflare signaling.

```sh
wax tap undivisible/tap
wax install folk-around
```

```sh
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install folk-around
```

## drift-wallpaper

Fluid live wallpaper for macOS, Windows, and Linux: [undivisible/drift-wallpaper](https://github.com/undivisible/drift-wallpaper). Inspired by [sandydoo/flux](https://github.com/sandydoo/flux).

```sh
wax tap undivisible/tap
wax install drift-wallpaper
```

```sh
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install drift-wallpaper
```

## poke-around

Expose your machine to your Poke AI assistant via an MCP tunnel: [undivisible/poke-around](https://github.com/undivisible/poke-around). Community project — not affiliated with Poke or The Interaction Company.

```sh
wax tap undivisible/tap
wax install poke-around
```

```sh
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install poke-around
```

## unthinkclaw

Local-first Rust agent runtime: [undivisible/unthinkclaw](https://github.com/undivisible/unthinkclaw). Small, async-first, uses SurrealDB + RocksDB as the primary state layer.

```sh
wax tap undivisible/tap
wax install unthinkclaw
```

```sh
brew tap undivisible/tap https://github.com/undivisible/homebrew-tap
brew install unthinkclaw
```