class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.5.8"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.8/poke-around-macos-aarch64.tar.gz"
      sha256 "af6f78b94992b7312a7789722dc19db12acd533a20f236e459103066ed779ec4"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.8/poke-around-macos-x86_64.tar.gz"
      sha256 "60a653e3775e9a13f369a32b7bb44d9a34fe4edf53e75a2c365265579249c3be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.8/poke-around-linux-aarch64.tar.gz"
      sha256 "5229576637a32bfdc548f936128c35c2056e5bbf0acffc06f1bef87f28d9cf91"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.8/poke-around-linux-x86_64.tar.gz"
      sha256 "3a2038df7875ac7f070f3f372088f6fdd4e6c42dcc189d00fe4996832d10447c"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end