class Rx4 < Formula
  desc "Agent harness engine — loop, tools, providers, sessions, permissions, computer-use, pi protocol compatible"
  homepage "https://github.com/tschk/rotary"
  url "https://github.com/tschk/rotary/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "33400ae450e2556f9bdd69d2dce67308a165ad8dd5c88a1f9aa5551c3ae83acb"
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
