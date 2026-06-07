class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.2/poke-around-macos-aarch64.tar.gz"
      sha256 "a5b0cf67417d734a39842d85226a6dd70eeaa925019c64b29fd770bb7dad3011"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.2/poke-around-macos-x86_64.tar.gz"
      sha256 "8552a8ef87489863afcaf5be6ea721d4e93e628619228539ceb13ee05365c8a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.2/poke-around-linux-aarch64.tar.gz"
      sha256 "d50b1580ed6f511de1a67afb38a3a7dac1dc0ba336911e68356a50fdc15012d0"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.2/poke-around-linux-x86_64.tar.gz"
      sha256 "49992a06f69478a2b90be208e99a58b663e8b90d10b571fbf5616a09c0b09a34"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
