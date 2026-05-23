class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.5/vro-macos-aarch64.tar.gz"
      sha256 "b1e54533d6d9b098656b78047edf6968c93743ea12d4fd5910131551cd6f8e7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.5/vro-linux-x86_64.tar.gz"
      sha256 "7836ff8eee438052a674ddd6e20fd6a4d62b9f0f7663fd5a7ec6245f1275d213"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.5/vro-linux-aarch64.tar.gz"
      sha256 "cb57f0750fbfc07dbfa65d7284d984901df1aab901c5bac348c1e517566bb004"
    end
  end

  def install
    bin.install "vro"
    (share/"vro/syntax").install Dir["syntax/*"]
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
