class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.6"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.6/tk-aarch64-apple-darwin.tar.gz"
      sha256 "bbfb751ea4c329657fd451def13dd20bfcd0ef109767d7ab52599fd3ce6e0421"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.6/tk-x86_64-apple-darwin.tar.gz"
      sha256 "e2760c6cf8a16f537fa2184bf3392058e323bb6bee9de01cee8853a858b14bda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.6/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78fdd0ec30f17f9caa642f4cc0b98d1f58def753b0082dd12e443392493a023c"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.6/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01403c5012504876270722be3fc5756884c20a9b7ecb83def6f93a4d0f18c24e"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
