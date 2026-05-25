class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.6"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.6/vro-macos-aarch64.tar.gz"
      sha256 "36831add7e3c9ca2d987a7465027e03b247c7798f9b52b4cdc57ce4fb87c6280"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.6/vro-linux-x86_64.tar.gz"
      sha256 "1e1a63a8ec15f52fe8614977fdfc54141c6c558e972fcd2862cc7fd6ca35654f"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.6/vro-linux-aarch64.tar.gz"
      sha256 "8fac8d301b9ace388fd4d7732fa3baec473eceb253eaae8148cf473389cc1870"
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
