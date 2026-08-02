class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.4.0"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.4.0/tk-aarch64-apple-darwin.tar.gz"
      sha256 "b587576b592aecaf11874b4e8dc91d850156fd36a8556b8925274b005db4c2a8"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.4.0/tk-x86_64-apple-darwin.tar.gz"
      sha256 "1736cbb4d2df3371f703f6a48b34a84070a1fd539733e706e85ed2c343ac2a99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.4.0/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c7be1e7dc6d8f7594713e1a7156d4dd42ab9511aad28f6742f8c330c991885e"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.4.0/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44271b6f3ceded1ad923499fcb20a05cc168df7231d23a132a0e1a049e40bb47"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
