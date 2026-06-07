class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.16"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.16/poke-around-macos-aarch64.tar.gz"
      sha256 "552e459d7610aa4bba1a05bef8ac84a30dd06feb369de8c0778a7876ec4676d0"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.16/poke-around-macos-x86_64.tar.gz"
      sha256 "29b31e10b3a770941b1d154f457b4fa875f27d611096ea5971acc0aff09dc2b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.16/poke-around-linux-aarch64.tar.gz"
      sha256 "4ecd78c29674ea50abed767935cf8935d3b7d813a31b0bc04b27b5d5c81b2802"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.16/poke-around-linux-x86_64.tar.gz"
      sha256 "d3a5ffe9e64fe39ef2bb840fc048b2ad93cb1f8cefeec371b1dd3fee170b3444"
    end
  end

  depends_on "node"

  def install
    bin.install "poke-around"
    bin.install "poke-around-bridge.js"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
