class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.3.5"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.5/tk-aarch64-apple-darwin.tar.gz"
      sha256 "7e1e210bc84fa5b38b6f5dd7357b87ec0ecd85bc0289f87de0ec4230b32b1652"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.5/tk-x86_64-apple-darwin.tar.gz"
      sha256 "1aa89b486ffc5e55d45586fde8f25a6c6d2e7d2011964ee46ae39f0ba3928c71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.5/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08fb396990ae3dd6a034db0b12cafb6f5f6fd81cdeabd892ddeacec857c8b0d3"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.5/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "694dc5b2ab1bc3ba0bd18e5540bc9fba9ce3e5ab582832a11594b2fd2b5d2882"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
