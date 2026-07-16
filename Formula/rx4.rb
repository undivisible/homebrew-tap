class Rx4 < Formula
  desc "Agent harness engine — loop, tools, providers, sessions, permissions, computer-use, pi protocol compatible"
  homepage "https://github.com/tschk/rotary"
  url "https://github.com/tschk/rotary/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "2a9b5d1312afb1cbee4cea90e8abd81429dba262ed9b1f14399c721dc96c94be"
  head "https://github.com/tschk/rotary.git", branch: "main"
  license "MPL-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", ".", "--features", "providers,ipc,builtin-tools,pi-compat,mcp"
  end

  test do
    assert_match "rx4", shell_output("#{bin}/rx4 version")
  end
end
