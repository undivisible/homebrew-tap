class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  version "0.6.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.1/poke-around-macos-aarch64.tar.gz"
      sha256 "cc45c7ec9857150fceac01a0311145ed098ff56a15f2c6004584bf39fb7217ca"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.1/poke-around-macos-x86_64.tar.gz"
      sha256 "f340b330372ccd2594df10c9bb4a3e723ef2c43a0ea93a19195d3f9f1bf623b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.1/poke-around-linux-aarch64.tar.gz"
      sha256 "f2c6ee5a58b56dcda9bb8784240ba5a5cb9e8f5dfb17f48657743a4e7dec0085"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.6.1/poke-around-linux-x86_64.tar.gz"
      sha256 "670bfd6a7bfa70565b442ae5756978e8cf92c30c09f3027f43f9e0c54753f1c6"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end