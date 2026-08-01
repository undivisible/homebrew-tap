class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.3.4"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.4/tk-aarch64-apple-darwin.tar.gz"
      sha256 "948c715cfeefa87e50f45ba9c2c0ac16a9c00e9835a2bd1406e9da6b98faa7fa"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.4/tk-x86_64-apple-darwin.tar.gz"
      sha256 "e7bde223fe22ecd464fa898ce23a2e3dec6dc75d4b518150246da91f42049967"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.4/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0acab147eaa52846ef58dbaad02bb0329cf68f364a67d7222e091a22efaa2d16"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.4/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ce3e3b44c892b06165bb53ea3c57b67a78760a5a1dcde8862e625d91db8b3a5"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
