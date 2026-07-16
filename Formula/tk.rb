class Tk < Formula
  desc "CLI + TUI host for the rotary (rx4) agent harness engine"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "29317b266913f0403e55200bb18f313b2d2c840b7e23438cb8bd17b60975edf0"
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
