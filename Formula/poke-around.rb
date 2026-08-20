class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.6.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.3/poke-around-macos-aarch64.tar.gz"
      sha256 "bb956cfa083fa9d2bb7edd3e6f97e6461514ced5f5a13f505994796d3f206b0c"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.3/poke-around-macos-x86_64.tar.gz"
      sha256 "8adc49761ab2aa8eed65667700e4664f479662f07541d68ccca4aa9a9685c7a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.3/poke-around-linux-aarch64.tar.gz"
      sha256 "51acecf8f4bf3dbd1bd56fe22c592c782acaa0b26ccc55ce9408f558d39e256f"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.3/poke-around-linux-x86_64.tar.gz"
      sha256 "b78f6e46be1b22de1351771bd56a733c04b100e9168f5399e7839ee1f99ee6ea"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end