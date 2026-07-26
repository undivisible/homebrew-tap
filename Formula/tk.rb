class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.14"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.14/tk-aarch64-apple-darwin.tar.gz"
      sha256 "39c1280534ded15c7cf9c2b8ed0062c224acdffb93bd7587ff57a55dec7a6ca0"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.14/tk-x86_64-apple-darwin.tar.gz"
      sha256 "192a78435bcc6dbdfeb29c856658e23540db5dfeb3f1456eb8e5988297f00217"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.14/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "142bf4bc5a75aaddd1bc9973cde53d31240b42da5d992ac65765bb8646c1b26e"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.14/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b53d64be4ee015fe5cc38dc96e0d15ac25da1bc7c2d2f8419fdcd0daf5397810"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
