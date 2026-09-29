class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/tschk/telekinesis"
  license "MPL-2.0"
  version "0.6.25"
  head "https://github.com/tschk/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.25/tk-aarch64-apple-darwin.tar.gz"
      sha256 "21bf0961a6cbabc4ecf0062c6ca02bc4754694a4bce4889c92bbbe548eeb03e5"
    end
    on_intel do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.25/tk-x86_64-apple-darwin.tar.gz"
      sha256 "9b5a83cc9ab175e6d3f13307e68f96b62edffb110b68c9c02c8fa3ba1a81436f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.25/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "146056516f7c3095fe1de460d5cb29be84509b2b537f11e7b4e8079bbbdecad7"
    end
    on_intel do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.25/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18c1f5611780e2301a15b2b41fe9baf7e6d947ba9899dbe0a95040c8e16573c3"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
