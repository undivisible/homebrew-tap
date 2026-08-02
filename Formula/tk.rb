class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.3"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.3/tk-aarch64-apple-darwin.tar.gz"
      sha256 "1777e7fa8bd392955bfe3dfbfd98dbe094f52a4b1adb5d038bfc91f63d1067c2"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.3/tk-x86_64-apple-darwin.tar.gz"
      sha256 "93ce19056243c1d08a62d15c0b4d11fcafc393084c059934fb4e5dd4748f4034"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.3/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e9d5a4e69ff995765b89aee34a4e8604244dfd9937b3ba281f1df1c9147c88c"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.3/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88f393822c1d24c5e1500d9f9330ee7a93722a358d6f44892d7f605338a307b3"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
