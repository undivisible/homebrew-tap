class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.2.2"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.2/vro-macos-aarch64.tar.gz"
      sha256 "910632272acb8f9a45702ccc8c96e259a438fb60191f077e177292174090da76"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.2.2/vro-linux-x86_64.tar.gz"
      sha256 "b6862272ebdebd23e44645bc34b4d444e6368b658acf74296e8e725eabd30459"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.2/vro-linux-aarch64.tar.gz"
      sha256 "73a26dfe6b04740908511dc463f06018d4b54714d095bda0cf6098f89aec1ad5"
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
