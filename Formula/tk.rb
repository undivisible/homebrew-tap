class Tk < Formula
  desc "CLI + TUI host for the rotary (rx4) agent harness engine"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "2ea138fc717f081175c18872793bc937fe45ca46e01f429cdc8efc1319feef13"
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
