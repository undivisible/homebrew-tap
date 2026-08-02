class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.4"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.4/tk-aarch64-apple-darwin.tar.gz"
      sha256 "33f81273918460f306718f33873cde7bc2a6e93499e780e4165eb08d2dafb924"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.4/tk-x86_64-apple-darwin.tar.gz"
      sha256 "8500975f86d0776f23b523a6cd9e01a756b880ddf7c61aa7992e2709e97b6efa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.4/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e43dc3adbd5cc8005bac20c3662505d53a56632548fc1b5a5ba586a8c383185f"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.4/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51b786a6811c5f3160161aaddbf80c9a03e80ebeac9f4d4fff7c5140393f537e"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
