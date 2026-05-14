class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-macos-aarch64.tar.gz"
      sha256 "828ce3cd1f6ebebfa1af7da92d721a00c6c1a9d4f82ca913f85690ecbd86241f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-linux-x86_64.tar.gz"
      sha256 "287ecb01e0e6f5ff2c8244da2666896b93d3c24dac1b5fe3797cffabc3a86e56"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
