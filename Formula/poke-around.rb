class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.13"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.13/poke-around-macos-aarch64.tar.gz"
      sha256 "f678a5b072c5a55092d706cbe4b9b09b6c8779b349a03f491b79cfe2f197e0ef"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.13/poke-around-macos-x86_64.tar.gz"
      sha256 "1900f6ccbb5ae38d4b622813104cc70df3a0bcbdaf16cd8774e26968e60e94f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.13/poke-around-linux-x86_64.tar.gz"
      sha256 "e28f62723e094eab7d5ad16e1d79d765016dcd32a4da8f3c352022690c6a0df3"
    end
  end

  depends_on "node"

  def install
    bin.install "poke-around"
    bin.install "poke-around-bridge.js"
    bin.install "menubar_linux.py" if File.exist?("menubar_linux.py")
  end

  test do
    assert_match "poke-around", shell_output("\#{bin}/poke-around --help")
  end
end
