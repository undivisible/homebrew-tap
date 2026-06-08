class FolkAround < Formula
  desc "Rust MCP agent for computer control"
  homepage "https://folkaround.undivisible.dev"
  license "MPL-2.0"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.3/folk-around-darwin-aarch64"
      sha256 "407dd826a643c2972f4f92d8f65b4cf590b4de25d6bead9724b528370e66fb65"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.3/folk-around-darwin-x86_64"
      sha256 "7d4a9df52efbb2702b306b3cb16c80c48c1137f60837afbabf3958a11c0a91e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.3/folk-around-linux-aarch64"
      sha256 "6e68803d66328b2d67e8da806b718473fa471f94afcf1d18f919bb4819042df6"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.3/folk-around-linux-x86_64"
      sha256 "b181506e3628936eae0722cfda5ca21ed2e2d6922bb3e98bb5e7c7a1453f3201"
    end
  end

  def install
    binary = Dir["folk-around-*"].first || "folk-around"
    bin.install binary => "folk-around"
  end

  test do
    assert_match "folk-around", shell_output("#{bin}/folk-around --help")
  end
end