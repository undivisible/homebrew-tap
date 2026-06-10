class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.5.10"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.10/poke-around-macos-aarch64.tar.gz"
      sha256 "a638f8ed91e52254d15210c10222c1f588347850fb7d863fd1b1e28633ebfcfc"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.10/poke-around-macos-x86_64.tar.gz"
      sha256 "2132c0b4452787e87cc5118529da1b192a837d1710d6e5910ea41dcc880c666c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.10/poke-around-linux-aarch64.tar.gz"
      sha256 "a7f348bf9f85edcabe3cbb056e19997e29a16b0842c8b5453f8616f87eac145e"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.5.10/poke-around-linux-x86_64.tar.gz"
      sha256 "44f0f6c77254021c9f0f278d5166ba61df4126fa5037d8fcc3eddaa47fa59056"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end