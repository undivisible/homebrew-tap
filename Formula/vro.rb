class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.2.0"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-macos-aarch64.tar.gz"
      sha256 "42d98871c5d52b908b416f891295048b9a49c9188a24c309270587d4687be17b"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-x86_64.tar.gz"
      sha256 "4fd1ef0f3ca606b12000ab875aa0397b24640227699041ce507fb0258529c849"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-aarch64.tar.gz"
      sha256 "bcca56783b2cbee56ef17f3ef931a5531964204c48686a4d98950a683895900b"
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
