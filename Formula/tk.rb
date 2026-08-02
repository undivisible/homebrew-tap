class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.3.6"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.6/tk-aarch64-apple-darwin.tar.gz"
      sha256 "6618e4c7671b0372243a3011f969a717e0ae4c30d96ee01e156f8a74acea86e1"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.6/tk-x86_64-apple-darwin.tar.gz"
      sha256 "776c2fd5b01dd195801be7b08c6f43b8ce0b989098d6026e753df25ce1b0ee7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.6/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3d7faae18aee4cd7b87783412741bb5b4d878fccee7f72262471d34fd9afbee"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.3.6/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4630d27fb4cc91911294aebeacb3a577f3de8dc82f24e544ef960749822b310"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
