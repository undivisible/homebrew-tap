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
      sha256 "d8a471e6de24618fdcbb6590021f48888148769e513fffdc9ad8c4da63fa4685"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-x86_64.tar.gz"
      sha256 "f7c3cbc891c166e3d958455f158b99e53beb1f4a36eb1c360b9a852f129092f4"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-aarch64.tar.gz"
      sha256 "0e6bfe5e6917abbf564e01804f43dfda3a366a7ff74ad384158e48b8c837318d"
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
