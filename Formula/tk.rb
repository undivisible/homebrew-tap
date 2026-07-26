class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.15"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.15/tk-aarch64-apple-darwin.tar.gz"
      sha256 "4c76c74057d938e16383ae6d57f1842fd9d0b5a26b016336fbf74889e03c5348"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.15/tk-x86_64-apple-darwin.tar.gz"
      sha256 "5c24b81f9970aef47118c98184ee098fa56d31b226ca2185658a53e7124ab289"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.15/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27206b27174d5b9d0f58f6282ca24f62b515c366886ee805f171bd9622417586"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.15/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9166083576ce1e1ddacd7adb224b6f3edbce54d8f8511f2f4860bc9f9441a65f"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
