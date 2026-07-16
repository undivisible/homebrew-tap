class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  url "https://github.com/semitechnological/telekinesis/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "58e04c9ea1977a4a48a91822b2b995b760c7bb8adc8e3c839a318ddef6f56c8e"
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
