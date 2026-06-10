class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.5.9"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.9/poke-around-macos-aarch64.tar.gz"
      sha256 "75b21cb4ef4cc0ad72bf85183afae529d9b8548afdb21b81a07de07135d640cd"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.9/poke-around-macos-x86_64.tar.gz"
      sha256 "2e23345ac5f93b8d5e22321435b2f4cea0248fe5626c016ea18d6cf2c0a49a75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.9/poke-around-linux-aarch64.tar.gz"
      sha256 "8f47ce26c7552eb346052effa5fa20849959b95989d85c19874e8e25181bb2d7"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.9/poke-around-linux-x86_64.tar.gz"
      sha256 "92a7da84d9156b32c5574eee0007781d9fe5189fcba7d10d531767d81987b958"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end