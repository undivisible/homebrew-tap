class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.1/vro-macos-aarch64.tar.gz"
      sha256 "8c4273789922092fa6a1b69f83d73d0bd1dadbef18f0e8336646721f90c214f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.1.1/vro-linux-x86_64.tar.gz"
      sha256 "1a89423ce37b80e7c67a1c81af73f61de70380f3966fd9da64c35317e1871f74"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.1/vro-linux-aarch64.tar.gz"
      sha256 "4afe0674eb7c36999a43b4ec1ada35e27c8ec204521d28105f1d3300ac283bfe"
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
