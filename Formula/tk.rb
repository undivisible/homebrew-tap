class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.6.18"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.18/tk-aarch64-apple-darwin.tar.gz"
      sha256 "7e44c6a6a9d4f3c3dbaf911aeae08531a7c84f9a6d2c6d1a331ce3ec64478582"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.18/tk-x86_64-apple-darwin.tar.gz"
      sha256 "8b8dfc31fad8620fc961d2a231bf1c7d85bdece6e863edc4eee793eda587e658"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.18/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19fe4f5d79d92832b4d8de459a56cc55f076ff41d7d72772f20d27b1e94b8080"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.18/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16b5eb865daa2da1be2383e30d91692b64b9bc4f3abbd5918b2a21451854d09f"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
