class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/tschk/telekinesis"
  license "MPL-2.0"
  version "0.6.26"
  head "https://github.com/tschk/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.26/tk-aarch64-apple-darwin.tar.gz"
      sha256 "1b307095ed02af9365df61fb042ad10870af4b47d49ffb8a7225909ce7937c39"
    end
    on_intel do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.26/tk-x86_64-apple-darwin.tar.gz"
      sha256 "7a4cafa13dc7c3f0dbffbdc191cda7b403d80c49763c88760f7c4c05bb995b3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.26/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21b8aa5f8632540380a5ede7974f6cb366b8839172e7af88d58e27dfba18adf7"
    end
    on_intel do
      url "https://github.com/tschk/telekinesis/releases/download/v0.6.26/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7be7dd3c02cd647b877bd486b822c77afb4c610e9f4379fef9cb2321ea0c6725"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
