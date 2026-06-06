class FolkAround < Formula
  desc "Rust MCP agent for computer control"
  homepage "https://folkaround.undivisible.dev"
  license "MPL-2.0"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.1/folk-around-darwin-aarch64"
      sha256 "4fffd0ebe4015c8dbb56c46d0888576ad5579c53f2052cb89ace1038f5c7f54e"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.1/folk-around-darwin-x86_64"
      sha256 "d9368e10fedb6d3e4ef5b730832f7715c60a3aa9b177b51aa1c8c530bbb45d50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.1/folk-around-linux-aarch64"
      sha256 "eb4093762fabfdb1c4592dbb2e3b82185bd0cebcd97cdc7788bc2de3ec96f2b3"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.1/folk-around-linux-x86_64"
      sha256 "6b19653a12d3e93217cf1911eb709b35b10c186572a6e1ab570647a6875d91cd"
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
