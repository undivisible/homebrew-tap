class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.3/poke-around-macos-aarch64.tar.gz"
      sha256 "bb129f5accb107bfc763e61d8b5f385e73391db9b508a0aeba84dae6c0edecf8"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.3/poke-around-macos-x86_64.tar.gz"
      sha256 "5a24d58818bdedf3c8ae796808ae1c85c4e74cc585e06b6d32c5fd7767cd63e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.3/poke-around-linux-aarch64.tar.gz"
      sha256 "3e618676faf43efb5f8ba6575d6feaa2dc1556bd9b4fc4ab0db2ffbe7fecd034"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.4.3/poke-around-linux-x86_64.tar.gz"
      sha256 "1099a0da621436f58de5f48ade3545cb4917195a3ed4ba492a31f57652655649"
    end
  end

  def install
    bin.install "poke-around"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
