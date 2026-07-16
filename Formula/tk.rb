class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "48442dee536386d1a4aae1551503cf051b227b762f0ce89ce0e5840198e0a2ea"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"
  license "MPL-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "ui/tui"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
