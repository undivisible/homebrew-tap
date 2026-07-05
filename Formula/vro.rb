class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.2.3"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.3/vro-macos-aarch64.tar.gz"
      sha256 "94e1af95457db705e12fc68c8a8e80a3910b0b58196fc0d04b8be430810dbffb"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.2.3/vro-linux-x86_64.tar.gz"
      sha256 "93f8e2c285233ecc3f1671e1f45d1b63517cad5b9a588b6256785af5bfa092a1"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.3/vro-linux-aarch64.tar.gz"
      sha256 "ce16e7ecd2d61e5dab8db7146dee78927182aeb3752dfe7af58ab8788eaa0926"
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
