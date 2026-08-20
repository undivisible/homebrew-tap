class Rx4 < Formula
  desc "Agent harness engine — loop, tools, providers, sessions, permissions, computer-use"
  homepage "https://github.com/tschk/rotary"
  url "https://github.com/tschk/rotary/archive/refs/tags/v0.6.3.tar.gz"
  sha256 "7f82286884849d5d2beb37157702abd0f84c0b32fcc437269637bf55946868b1"
  head "https://github.com/tschk/rotary.git", branch: "main"
  license "MPL-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", ".", "--features", "providers,ipc,builtin-tools,mcp"
  end

  test do
    assert_match "rx4", shell_output("#{bin}/rx4 version")
  end
end
