class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.3/vro-macos-aarch64.tar.gz"
      sha256 "bb7e3e5bd53e96021dcccc21c0045f5aa42d4007a8e4de90d2ca4bfedbc5f004"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.3/vro-linux-x86_64.tar.gz"
      sha256 "4b1aa010f59966199df84211cd1631a8fa35a867b86a50a933570079e135720b"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.3/vro-linux-aarch64.tar.gz"
      sha256 "4f7c1f5b0b7389f8a1d8ea9530d43624bd18415b78a46de74f2177cfa357be3d"
    end
  end

  def install
    bin.install "vro"
    (share/"vro/syntax").install Dir["syntax/*"]
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
