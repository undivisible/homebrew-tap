class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.6.23"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.23/tk-aarch64-apple-darwin.tar.gz"
      sha256 "278e973bd2e97fb7dba650f86c0884c2385c9b83eaf6a45a7570bc1d67ee649d"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.23/tk-x86_64-apple-darwin.tar.gz"
      sha256 "93c0792e93f93855d9a9b330a7e2ddb4d8b649d75927baeee4cab9dfb72bdee4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.23/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ef4e0f1bf5380df98271d12eb94327c4465ba1d11bf496db905dd06bdbc71d3"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.23/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c112f3fcb6f25921c93890224e7c3bd471a7d18ae13beadc9f88a4dc6860aff"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
