class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.1"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.1/tk-aarch64-apple-darwin.tar.gz"
      sha256 "790c94275e556427e37fba92512f2e5ce9193b3d8bb3c81a246a2d7bb285acba"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.1/tk-x86_64-apple-darwin.tar.gz"
      sha256 "4751af15010b52430c6fcd6e3fb46ad91540008784f35c39a706234e3589ba0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.1/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4484096fd298134babc0241155879e63edc96d5a6dd835f9608009fa0016b7d4"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.1/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcded51db59f3efb21b3de5e9f52b24a18f7183c3a9fd6721c7d65ad6578079b"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
