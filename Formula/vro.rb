class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v0.3.4/vro-macos-aarch64.tar.gz"
      sha256 "ed407fa165316ba760d62ffd03620ca2e44d61333f00d6596f94e2ec377469a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v0.3.4/vro-linux-x86_64.tar.gz"
      sha256 "13b15f5d48a07278f0cf80b81c61f6bfa07a29ed2d29722d98f4ebf3877b1047"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
