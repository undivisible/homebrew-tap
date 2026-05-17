class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.4"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.4/vro-macos-aarch64.tar.gz"
      sha256 "a2b1f73b928b6ff0d9e70080bf46f7552386dcbd66d98c5bfecf2ab309d8b063"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.4/vro-linux-x86_64.tar.gz"
      sha256 "fbe5066f2e4f61a0c0afae09a1d4c8284578578b1bc8aeb298ad648de2f5e2da"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.4/vro-linux-aarch64.tar.gz"
      sha256 "55dbbf5bcbfd4de2e1f4bcacc1e09841feb917606fe700dbdb76fa6fe06bafc8"
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
