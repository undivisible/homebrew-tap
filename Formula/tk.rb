class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.6.19"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.19/tk-aarch64-apple-darwin.tar.gz"
      sha256 "853c975375b3be681389d70a8b96f30b8296e3d6073f2614202d09b5ae77744d"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.19/tk-x86_64-apple-darwin.tar.gz"
      sha256 "876e2365e592ce47d9a602174d7896ce7b519dc649053165c8ee5d6ce82dfed6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.19/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5fc544c6a815304e8039bfcda60a8959c024e33f351d7c117a3adfd35403e9ba"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.19/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e45b1df060c1cd5726be4a6c292aa53fefb4067711c4fe72da09be21a637a03e"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
