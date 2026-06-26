class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.6.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.2/poke-around-macos-aarch64.tar.gz"
      sha256 "ec56605cfe959b0e98921b1f8bf9587d5a997a0764aeb35baad5ec703066fe33"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.2/poke-around-macos-x86_64.tar.gz"
      sha256 "e1576b3026590ebb7ca6f5875e4111f9c169da923fa4fb2893cdab9a80f35dab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.2/poke-around-linux-aarch64.tar.gz"
      sha256 "66f9d39b38c125e5d1c4477fca2ae878f9a2ccb4c92ec0ae51be03613c534046"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.2/poke-around-linux-x86_64.tar.gz"
      sha256 "c6dec664b14ce3fc8ad86949303f2dac757df166cc1ba685a6b6bbf80e524a11"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end