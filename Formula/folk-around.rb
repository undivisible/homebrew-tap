class FolkAround < Formula
  desc "MCP agent for computer control with stdio, HTTP SSE, and P2P transports"
  homepage "https://folkaround.undivisible.dev"
  license "MPL-2.0"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-darwin-aarch64"
      sha256 "35b8c6be0b39def15e6e28ab11696139f4ec4c2801c6819f481c471f9c8bb1a0"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-darwin-x86_64"
      sha256 "11327fa79f7027cd6c73a57ae56ebc1ea3e5195a3446fce3223b4822e1320c7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-linux-aarch64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.4/folk-around-linux-x86_64"
      sha256 "c4c7421210b81c84c622165266aecf7142258ba61a46f245d62dc2ac8772af7b"
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
