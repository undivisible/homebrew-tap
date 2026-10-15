class FolkAround < Formula
  desc "MCP agent for computer control with stdio, HTTP SSE, and P2P transports"
  homepage "https://folkaround.undivisible.dev"
  license "MPL-2.0"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.6/folk-around-darwin-aarch64"
      sha256 "45fd135eb86dd8cb575b007f930baf45ba855bca1b24511fba985cadfc9e7956"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.6/folk-around-linux-aarch64"
      sha256 "c12b6dab5445b10f3468cdd9a1ec235cad4db75be23a31f266420c4f9e29b3cd"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.6/folk-around-linux-x86_64"
      sha256 "071adca0c570904d2bd40c273c1e84c6ed9beaa65ef164022c94404634dcd6ca"
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
