class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.5.8"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.8/tk-aarch64-apple-darwin.tar.gz"
      sha256 "cac6b806a7a01d130050834b5fe4f7a4d0f68232782d062483ddbf740c6c9845"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.8/tk-x86_64-apple-darwin.tar.gz"
      sha256 "6f6d14f3d9627c0dba6588c9e17b692c7f4acee8eb25dcff827f1176dfdacd10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.8/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65cab1b256874fc8b522eb5e385c2d8e7f8d7d35529621c659b5e42fba30420e"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.5.8/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff3c4146588672d2092262a9663497cd6680ec1f7950865398840b9ecf67c102"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
