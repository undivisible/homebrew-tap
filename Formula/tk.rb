class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.5"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.5/tk-aarch64-apple-darwin.tar.gz"
      sha256 "c569e803fcb3a2847492752443bd2d767f4cec73f02c7e80c0487ccfe66a90a4"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.5/tk-x86_64-apple-darwin.tar.gz"
      sha256 "cf9c0bf0e079d14267e4c19f3f9532d509fb685c9c5df9a3c828ed136096ff0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.5/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5402cda98ac648c75f636bb9839a4a1b731ba509a56c7986681b703e101e4487"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.5/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a813b406549ee1c5a8e7b21e4e3b9f440da790d94789320c268a4d21ba608785"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
