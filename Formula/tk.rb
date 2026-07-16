class Tk < Formula
  desc "CLI + TUI host for the rotary (rx4) agent harness engine"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "76d345426769cd1e64953556b125c6dc48e1b31cdb5ff6a15e8b50e6a40f6845"
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
