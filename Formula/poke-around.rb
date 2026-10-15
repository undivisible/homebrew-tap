class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.6.5"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/undivisible/poke-around/releases/download/v0.6.5/poke-around-macos-aarch64.tar.gz"
    sha256 "681b8fa51cdd3fbadb02e7491dd0c3b59374f74360336b571e7c22a3c5594fb3"
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.5/poke-around-linux-aarch64.tar.gz"
      sha256 "4c6eb23048231081a1e0e663025d2912816b708d284689d3d55a8b252fe26ddf"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.5/poke-around-linux-x86_64.tar.gz"
      sha256 "804a8d4c4e1f1a35bf5f9cb5a16be3a61b4641b8a35ed33bd5abef376468e2b2"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
