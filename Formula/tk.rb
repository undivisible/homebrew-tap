class Tk < Formula
  desc "CLI + TUI host for the rotary (rx4) agent harness engine"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2bc991c513f1b2abfd389f519d5af1b29d4f4a3645748821e879fed22c0d1373"
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
