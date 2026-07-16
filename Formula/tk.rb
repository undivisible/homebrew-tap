class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "acb4d19a66d054a0b92c391d7813f29e300ea1e21d20d81bb7a272a1d5f1c0b2"
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
