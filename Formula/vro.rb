class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v0.3.7/vro-macos-aarch64.tar.gz"
      sha256 "ce958a60870cc0cafb3488dbc4587420d397b48630690ca82405c3f133ca5c02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v0.3.7/vro-linux-x86_64.tar.gz"
      sha256 "5e32e04400e6bdcbd0ce33451cdc673662b533dc8270e7d35fdf7dbba5ada456"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
