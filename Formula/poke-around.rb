class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.2/poke-around-macos-aarch64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.2/poke-around-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.2/poke-around-linux-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  depends_on "node"

  def install
    bin.install "poke-around"
    bin.install "poke-around-bridge.js"
    bin.install "menubar_linux.py" if File.exist?("menubar_linux.py")
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
