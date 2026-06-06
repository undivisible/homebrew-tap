class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.15"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.15/poke-around-macos-aarch64.tar.gz"
      sha256 "883505dfcb25df27580af0abb30d25b52209faa9e47275e5f6a31365deaf850a"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.15/poke-around-macos-x86_64.tar.gz"
      sha256 "e1e6382ffa1acfa74645727065c4966176920d115e29975491d757ff1f73a8c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.15/poke-around-linux-aarch64.tar.gz"
      sha256 "1da5d5c0c6626714bd1352583b363afaf4dd73c47ffeb4d00f0407633e918ec7"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.15/poke-around-linux-x86_64.tar.gz"
      sha256 "13ee699a45a1a8b097b0c09e88b4657253950e810af0700fd20e8f49944941b3"
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
