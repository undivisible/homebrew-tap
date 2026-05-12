class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v0.3.5/vro-macos-aarch64.tar.gz"
      sha256 "803ad191ea4eed719c62f93544a0b60aa46a4d220f1849c2104fddbb349baa5b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v0.3.5/vro-linux-x86_64.tar.gz"
      sha256 "8ba7640c2aeae015cc13e55d51b428afdfd07d3bf78dc5079fab42a6aa654808"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
