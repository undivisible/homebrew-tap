class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.2"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.2/tk-aarch64-apple-darwin.tar.gz"
      sha256 "0e297cfed26737bba935dde43a94e77d6ebbac14e5be525a1efb8b0508556085"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.2/tk-x86_64-apple-darwin.tar.gz"
      sha256 "4b8a5c290ed13f2a20996dadc7db637906c49560067e5eeba0f479053600c6fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.2/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "738475adcade14670d43df3cbeee4d688c8adee9335bbb389100c061294cb94e"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.2/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b61b793e0e42ba5595ec9361027da34b11ec3a8eb03569b3d8fdb76c2da724c0"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
