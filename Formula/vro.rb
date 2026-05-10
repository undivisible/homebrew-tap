class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v0.3.1/vro-macos-aarch64.tar.gz"
      sha256 "2a0c023ef9548db69c465d07eeab8e8537bb257d4d82156ea612ec94c42b8279"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v0.3.1/vro-linux-x86_64.tar.gz"
      sha256 "4be586dffb63f6bc3310b31e177149971166b6278407dc0aba405e47e8b70ff6"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
