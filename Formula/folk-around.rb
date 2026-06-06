class FolkAround < Formula
  desc "Rust MCP agent for computer control"
  homepage "https://folkaround.undivisible.dev"
  license "MPL-2.0"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.2/folk-around-darwin-aarch64"
      sha256 "0b3ba3f7a7dcd2670bdc0759d12bae349713a3fb47f233fdede5b743b5ad1a64"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.2/folk-around-darwin-x86_64"
      sha256 "40396b90f55f6cfca6a3d931d7d85ab2b278c58861383c66e0ee857538cf18e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.2/folk-around-linux-aarch64"
      sha256 "3118c659c55d53fc7b609a9d1ba7e7f7030b3f98c48aea01f006c75676eff9e6"
    end
    on_intel do
      url "https://github.com/undivisible/folk-around/releases/download/v0.3.2/folk-around-linux-x86_64"
      sha256 "218f8179b095d35eaa7d95a94bc4b2c624244c8b8a4a6cdbc028da32eb01dee8"
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
