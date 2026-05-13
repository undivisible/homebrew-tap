class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.0/vro-macos-aarch64.tar.gz"
      sha256 "73a292cc7bd8109accfe15b60626df82fe5e7dcd94da2b24a3182a0a170a5409"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.0/vro-linux-x86_64.tar.gz"
      sha256 "886248b4fb9a02a9659977675ad316ea1b79dc62e092d1c98cd8abc539b2fe6e"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
