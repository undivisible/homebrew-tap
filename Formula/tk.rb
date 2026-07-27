class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.17"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.17/tk-aarch64-apple-darwin.tar.gz"
      sha256 "9967a4aef7da42e998af45348b7c029724518399f9f61817ef1460b8a9a55e1f"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.17/tk-x86_64-apple-darwin.tar.gz"
      sha256 "3bb526c8088d43ba5a39d815915dcc335a998196020db50163aa468f22acb7ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.17/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29589c57f9f9fdb466aa36d5b482e956807fea72839f3a0ddda687ae6584d46b"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.17/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90cf0788c965092489a7b37829666bd25399e3b27ccea5db01c4c7f4a91a38c9"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
