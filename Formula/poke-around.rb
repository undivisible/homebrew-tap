class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.2/poke-around-macos-aarch64.tar.gz"
      sha256 "4c60e61338b3023fba3d12bcf9ad85d8f694161f0faadb626c4f22b042127397"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.2/poke-around-macos-x86_64.tar.gz"
      sha256 "273fe8fd3e45431287c2aca7f0b1e076dfdaea9d323443361c3037f412e08aaf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.2/poke-around-linux-x86_64.tar.gz"
      sha256 "3def9ea22e80ce7c4e5afa0adc9682aa402081746d55f57ba43041ab84f0efed"
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
