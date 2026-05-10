class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "0.3.0"

  # After CI publishes the v0.3.0 release assets, refresh checksums:
  #   bash path/to/vro/scripts/print-release-shas.sh v0.3.0
  # and paste the two lines into the sha256 stanzas below (macOS arm + Linux x86_64).

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v0.3.0/vro-macos-aarch64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v0.3.0/vro-linux-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
