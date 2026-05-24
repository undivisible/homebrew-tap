class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.5/vro-macos-aarch64.tar.gz"
      sha256 "e3e142a3352452cda61041b7fa50db28469ff4355c02309282cb624f0c035760"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.5/vro-linux-x86_64.tar.gz"
      sha256 "ed0f91f2efe30388a236997ed23faede2d3f9de0a98f9f3598bd8ce0bfbe3d9f"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.5/vro-linux-aarch64.tar.gz"
      sha256 "3a23db0c926446f911543a1983a8c5282e9382b11d272985f889e87708db94aa"
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
