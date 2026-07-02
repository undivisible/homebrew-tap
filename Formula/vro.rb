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
      sha256 "e17990bf8e2b97a0d737281d3fbbc2a7f87b865317c48a0014450cea3e87c18a"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-x86_64.tar.gz"
      sha256 "80e0f7ca8fa926092c56164a27c9ae234779ef820a6d3c0fab0ae79409287c8c"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-aarch64.tar.gz"
      sha256 "8b95ed146a48d790eb2953e9dea59126b5f9ac0af6a94c6970aeef9ef23d9ddb"
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
