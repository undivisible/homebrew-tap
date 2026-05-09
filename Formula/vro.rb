class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v0.1.0/vro-macos-aarch64.tar.gz"
      sha256 "84713e095bd13f8f73d0e3f4a399547ecb8dd8ccb4d9ad96ab3456f2c128b40e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v0.1.0/vro-linux-x86_64.tar.gz"
      sha256 "0040ebc17da2a2bb4895551c9be5e987d2c80403c1d076966e683625fa00017e"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
