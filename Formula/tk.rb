class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.6.24"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.24/tk-aarch64-apple-darwin.tar.gz"
      sha256 "91bb8fd638faaf799c966272d6abfe2c2788ff70cf0ed4ad775b446895159944"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.24/tk-x86_64-apple-darwin.tar.gz"
      sha256 "2a6ad4bb120ae775cde61e674b3fc3dc91845f361ca6c152b83fdfb991616317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.24/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d3bfc08ccd505f3e4cae5c30f5a8e3d1842874f609b5ddcdcc0513e6a7b65d8"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.6.24/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3dd23feb9c8eb3e7d9ab167296dc897a2fba67eee10568a8db8e9a6f91c8948"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
