class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  version "0.3.20"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.20/poke-around-macos-aarch64.tar.gz"
      sha256 "1c144dac96351aadfbb318b2ec1f7946105785357814f2a408b7c134a1da316d"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.20/poke-around-macos-x86_64.tar.gz"
      sha256 "dbd7ab1fb9f5ee80f60b119f3f5e28b1bd09431cd3c8fee975128e631953866b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.20/poke-around-linux-aarch64.tar.gz"
      sha256 "59e345330bc6025283a30b92a590b290613e9873d106b4994d38dc20c926eab9"
    end
    on_intel do
      url "https://github.com/undivisible/poke-around/releases/download/v0.3.20/poke-around-linux-x86_64.tar.gz"
      sha256 "b6114ed5a3cfb72d11073e4f7a17f234b7e58cd25cbfb8b924d9ee4fe75d6ad2"
    end
  end

  depends_on "node"

  def install
    bin.install "poke-around"
    bin.install "poke-around-bridge.js"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
