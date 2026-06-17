class FolkAround < Formula
  desc "MCP agent for computer control with stdio, HTTP SSE, and P2P transports"
  homepage "https://folkaround.undivisible.dev"
  license "MPL-2.0"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-darwin-aarch64"
      sha256 "6bccb05c0b618bde6b32d84306e3df8c0d0d6a0b0d5399c889c563c312477fe6"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-darwin-x86_64"
      sha256 "8b2bf9ff51d84cabaa33cc120d9100ed368c200a199f9935c2c9761b66ce30f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-linux-aarch64"
      sha256 "223f8e2172924e7521d93178302f2e0cbcb004f83d269e19ab338d9be8144010"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-linux-x86_64"
      sha256 "9943758a2d7092731ce0878a2256ce4ebd575be4489d3a299a760045f8af2508"
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
