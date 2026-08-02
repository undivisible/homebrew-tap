class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.0"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.0/tk-aarch64-apple-darwin.tar.gz"
      sha256 "8c5844ee9aa02c738c80090d02e39aa0062287469ba687d0a7f4ee315a4171b7"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.0/tk-x86_64-apple-darwin.tar.gz"
      sha256 "fc471ffcf73ae5f8b489030d9e9c322a627dbdb0dec7d82023b809f36ae15b45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.0/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d871548f0e20f80e7104da175d43b7a3ef17cedbce99b2ee797fdadbb4493c15"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.0/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fb082676ac1d3a1ba9722a3f3e52afd09030ac37df0dc3da4d3f31b81b55805"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
