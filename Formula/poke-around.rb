class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.5.7"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.7/poke-around-macos-aarch64.tar.gz"
      sha256 "aa50d140da5fca116cd11e1b1228656e89758b8b4cba025a451cc975aec676e7"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.7/poke-around-macos-x86_64.tar.gz"
      sha256 "b759d4f1553767fbcba069e04f30841ccb74143ac304e09849060380414e4094"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.7/poke-around-linux-aarch64.tar.gz"
      sha256 "8e7c8d553a4899d9341956c9e183f8404beb3909ed81eb81e299f2da39774a8a"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.7/poke-around-linux-x86_64.tar.gz"
      sha256 "faccae051372e121ad3e605e9deaf149ff4925d863c578349177a4741abc8f2f"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end