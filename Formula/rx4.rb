class Rx4 < Formula
  desc "Agent harness engine — loop, tools, providers, sessions, permissions, computer-use"
  homepage "https://github.com/tschk/rotary"
  url "https://github.com/tschk/rotary/archive/refs/tags/v0.7.5.tar.gz"
  sha256 "3ab20b05d033d37ff691573c33b520c5ebbf58e35b2b7b3d3d90c20357a33c7c"
  head "https://github.com/tschk/rotary.git", branch: "main"
  license "MPL-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", ".", "--features", "cli,providers,ipc,builtin-tools,mcp"
  end

  test do
    assert_match "rx4", shell_output("#{bin}/rx4 version")
  end
end
