class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-macos-aarch64.tar.gz"
      sha256 "ea0db223d37147ddedd595f8d9a771f1b70c96f00fcdb65973e8b84e281181de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-linux-x86_64.tar.gz"
      sha256 "347a067b6071fe6ad43b7c03deb664cf419df8904b89742d02a904d5a162c153"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
