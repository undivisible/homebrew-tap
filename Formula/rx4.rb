class Rx4 < Formula
  desc "Agent harness engine — loop, tools, providers, sessions, permissions, computer-use"
  homepage "https://github.com/tschk/rotary"
  url "https://github.com/tschk/rotary/archive/refs/tags/v0.6.5.tar.gz"
  sha256 "d061356974056befac4db5a6d3ad8edc7de28bc78ce49df4c6ba3769b090a0f7"
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
