class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.19"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.19/tk-aarch64-apple-darwin.tar.gz"
      sha256 "72924818fdbfc495c5e20d8a7a5e0cecd2b4501ddf1856b651808c16797b9820"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.19/tk-x86_64-apple-darwin.tar.gz"
      sha256 "c09f62cfa1b92a1fa9d29c1081b4bc5cfdc1dc185935e877029a339dcf68046d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.19/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf26c32f8d088eb08a23fc481cf060b94666cd8a898c05e1c39ee3d3d8f9bf31"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.19/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e51467421d9f9599f6fc62cc75ef7e87dd639820fad597305534649b258eb360"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
