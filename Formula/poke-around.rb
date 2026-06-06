class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.14"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.14/poke-around-macos-aarch64.tar.gz"
      sha256 "01af7fa785cdc606527eb5d536c7ba339db756322aa2ec9c7b6df7e342b446d3"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.14/poke-around-macos-x86_64.tar.gz"
      sha256 "047f7c9d71700acb52d0c5ae447cf8d66475efd4c203b4ed67dfc34d9bb4e7c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.14/poke-around-linux-aarch64.tar.gz"
      sha256 "ef8ea79fa03277e30a435c2c88cfb299996bbfb300270dbe3de0b8113776ef5e"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.14/poke-around-linux-x86_64.tar.gz"
      sha256 "290bb7b7b61e0086239be17a1265027c39db94fc53d389d1fe72333d40e40fc4"
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
