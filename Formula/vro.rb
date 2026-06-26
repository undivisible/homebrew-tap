class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.5"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.5/vro-macos-aarch64.tar.gz"
      sha256 "694df98c5ce5af07b184547a05081693dd0d6cf2428372898ad607c0077345d3"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.1.5/vro-linux-x86_64.tar.gz"
      sha256 "0fef4f73edef8845e849d70bcf81f2c13ad29c01d2c6d7fa8d191180916bd544"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.5/vro-linux-aarch64.tar.gz"
      sha256 "f1f5ee2b50b64e1d31b3e2cbeb661f0342e974cb42eea1469ccbcd54afdfdd9c"
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
