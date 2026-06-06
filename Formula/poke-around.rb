class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.12"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.12/poke-around-macos-aarch64.tar.gz"
      sha256 "6b8112d882e9d8c9920766a6e88aec4b1b50edc6c7777d1fe0c70f3bf32715ff"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.12/poke-around-macos-x86_64.tar.gz"
      sha256 "75ad09bda8fc6a8afe5581cd503cf2bb8c08e23da2d5c6c81f41f3590982a5b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.12/poke-around-linux-x86_64.tar.gz"
      sha256 "6e37b0670a07ee153661d03d4bab9097c3973a4924f4170c33115a3c5d05ef49"
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
