class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.2"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.2/vro-macos-aarch64.tar.gz"
      sha256 "26187a48950854ceedd61dd28d0b1146814664a32f243bc3b324639e6ec1b192"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.1.2/vro-linux-x86_64.tar.gz"
      sha256 "530796a14b15ab4c93650ff8ef17fac15a9fdbca0ae5d9a9672a7181b23a7b4d"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.2/vro-linux-aarch64.tar.gz"
      sha256 "0e558bd5b5f2a53ee894e5ef89710b67aa9086fd1ae681af061ae1b48b803fd1"
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
