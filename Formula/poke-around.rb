class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.5.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.4/poke-around-macos-aarch64.tar.gz"
      sha256 "8fd8364ae18309c08e5c5718a746fcd5c47251c1194969d6a1bae3b222fdf96c"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.4/poke-around-macos-x86_64.tar.gz"
      sha256 "0080e028ba1955e9d8f402e05d94f6c53f413ea3a87b68ec51117976aa24828f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.4/poke-around-linux-aarch64.tar.gz"
      sha256 "1bd4fbf95e04148f2ff953febd3282b268eb893f53bf7be8e6d45e240ba291bf"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.4/poke-around-linux-x86_64.tar.gz"
      sha256 "620e3c771bad46fac41416381b4fce9ab8ee84270e5ad3cac7c48a9545886a13"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
