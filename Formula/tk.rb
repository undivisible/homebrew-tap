class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.18"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.18/tk-aarch64-apple-darwin.tar.gz"
      sha256 "39d387fe048a8abc35c1d99f1bc7b107ee0c5fa875bdc5271af5f267df64b4a3"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.18/tk-x86_64-apple-darwin.tar.gz"
      sha256 "9c9032f1a9ebbc2b99177eeacfe5b24ee253e68d696deb3e1c912a644268c3e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.18/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dc76aabd37776e69cf0fcb41bcf37139219295c0eac34095bf9fae961522714"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.18/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3891968b635402131dcccc8bf2a66f1a6828a75b51803b81173d700199574de"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
