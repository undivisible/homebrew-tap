class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.6.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.0/poke-around-macos-aarch64.tar.gz"
      sha256 "93b88789a0bdc58a0c068a5af5424f1e2c655ce36520f3d0005b85e7d332d0f0"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.0/poke-around-macos-x86_64.tar.gz"
      sha256 "0b288c75513d3611bac82a3418b1708b029b25f19ff2d6528243d183e098302d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.0/poke-around-linux-aarch64.tar.gz"
      sha256 "4f41b601a5a7697eef0e47a652815c47ac29798b4a1f04cf44391b1ca15a07c6"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.0/poke-around-linux-x86_64.tar.gz"
      sha256 "2de73a4fedb9720fc174e3533b281369d145ac5da95cc686538b0704771aa6c0"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end