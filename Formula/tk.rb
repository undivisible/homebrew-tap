class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.16"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.16/tk-aarch64-apple-darwin.tar.gz"
      sha256 "8a3844bea424a8ee59ac0859e164fb2ae467e92fb4f9c8f2e49df79b96c6830a"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.16/tk-x86_64-apple-darwin.tar.gz"
      sha256 "9e86f2515589eb9d3340de2521c7e37fdb554c5aa598d52fb19b1cda372fe0b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.16/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e101ec4d48bb17653b8ae63428a74b633ba74d5e8a0c34a34e875e48033ead59"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.16/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24b4e296702b71d15dbcacb456e17958a61bd418c66da7d06039b2cf7c5daf81"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
