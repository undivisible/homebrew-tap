class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.21"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.21/tk-aarch64-apple-darwin.tar.gz"
      sha256 "6fe41c737a84260efb0ee41fdaa0ccbdb29f47a377a59f5eb180e19daa0d3ad7"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.21/tk-x86_64-apple-darwin.tar.gz"
      sha256 "aaae96a14ab4979b0b36a957538d83a1265ba1816daff8308274bb7687c2bf46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.21/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e8c4d035c97c1d1e7da6dbd16c5dd6dd8a486340ba7fd27566bd5f70b199cb7"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.21/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43802d2a9017c05ac8c192fdf24c53685e87f96cf40643f7d55086b105fa152d"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
