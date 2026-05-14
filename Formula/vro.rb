class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-macos-aarch64.tar.gz"
      sha256 "1c9a2c2b46707acf752de13d1d67215a41421e18baf69e78d30f0aafb29e2967"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-linux-x86_64.tar.gz"
      sha256 "7cf1f9e02221324ad5debcfb81835acb76008aa2dabf0e63dc2dbb79c1fa463b"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
