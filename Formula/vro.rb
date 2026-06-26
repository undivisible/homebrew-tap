class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.3"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.3/vro-macos-aarch64.tar.gz"
      sha256 "0a1337f8e758da49fb998f1991ffe15285c599f7fc4bf10012080a234b99f76b"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.1.3/vro-linux-x86_64.tar.gz"
      sha256 "6d59975b4670dbd4cacc99ee7d4cbaa44d5028c4109f022107e227b6517d4d68"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.3/vro-linux-aarch64.tar.gz"
      sha256 "5c4720ab82f8b4d435c8efea580720e9fa9160782d7d76d4310e5e0c33337c4f"
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
