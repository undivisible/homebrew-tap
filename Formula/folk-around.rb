class FolkAround < Formula
  desc "MCP agent for computer control with stdio, HTTP SSE, and P2P transports"
  homepage "https://folkaround.undivisible.dev"
  license "MPL-2.0"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.5/folk-around-darwin-aarch64"
      sha256 "fac34243858743520ce70861ca55bdc5869c502ac9f113360c4ec3f167effa72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.5/folk-around-linux-aarch64"
      sha256 "1964cada31bc4851924b2b82a4f471b693577d9d26e1b5b40c52c62c6f2a4c3e"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.5/folk-around-linux-x86_64"
      sha256 "7b55e69057723ba8a9c27ed1ff9537c34793a753977e4900c5635395653d0d03"
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
