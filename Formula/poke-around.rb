class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.6.4"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/undivisible/poke-around/releases/download/v0.6.4/poke-around-macos-aarch64.tar.gz"
    sha256 "f2dc4c974a74aaac5e3319445de671186b84d04a77ed96b0fe0dbe3471f30159"
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.4/poke-around-linux-aarch64.tar.gz"
      sha256 "4d86876ea04ef9ad23f7bae6bd78634afbd5caee8ba5184a606f7420fa09d3e6"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.4/poke-around-linux-x86_64.tar.gz"
      sha256 "cfa4ef5bdb060da9c6b81e48185d73d3bd9127dd51823469e6e0f581fdc8f36d"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
