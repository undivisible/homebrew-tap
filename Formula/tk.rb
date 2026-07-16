class Tk < Formula
  desc "CLI + TUI host for the rotary (rx4) agent harness engine"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "700b71e8961bc329777349a834a9cfb77acfca9ed3885ddd5f56c46925f7cce2"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"
  license "MPL-2.0"

  depends_on "rust" => :build
  depends_on "zig" => :build

  def install
    # Build the TUI (tk binary)
    system "cargo", "install", "--locked", "--root", prefix, "--path", "ui/tui"
    # Build the Zig launcher (telekinesis binary)
    system "zig", "build", "--prefix", prefix
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
