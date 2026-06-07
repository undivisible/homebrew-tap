class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.0/poke-around-macos-aarch64.tar.gz"
      sha256 "12e5768e83dc4ae315b3a0cc1b801ab42b04e5defcacbfaf11911cb1eb9c930e"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.0/poke-around-macos-x86_64.tar.gz"
      sha256 "acb4214898b99c51fb6bda17480d43630974a0e119dd51793448a0d725675302"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.0/poke-around-linux-aarch64.tar.gz"
      sha256 "7965ea0979f88d5f8817d21aca84c6b06a19ae2acc6ac62698c9cdf5faedecdc"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.0/poke-around-linux-x86_64.tar.gz"
      sha256 "533085a2b0f9b69c46fdf84c41b2e21a8fca33c7c09c4a5780d23e028b11459a"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
