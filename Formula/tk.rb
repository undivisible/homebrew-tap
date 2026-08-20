class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.9"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.9/tk-aarch64-apple-darwin.tar.gz"
      sha256 "6af3b25a73b42e15249428f5f20359e39060e401a98e85ff2cdfa9898af9bf17"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.9/tk-x86_64-apple-darwin.tar.gz"
      sha256 "b739a9802be3875f70a0797bede72c5cac4a13c4c1ccc1c1bbfee3fdcb316568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.9/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "148741fb75b144a35535852f63c246126d51774574d02ceac1535f7b9159bd12"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.9/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04833fe4a82c746b990c5d585e3fccaf3bf050f4bed61ce3bfa4176d17fd892c"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
