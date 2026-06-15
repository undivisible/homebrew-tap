class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.1"

  url "https://github.com/undivisible/vro/releases/download/v1.1.1/vro-linux-x86_64.tar.gz"
  sha256 "1a89423ce37b80e7c67a1c81af73f61de70380f3966fd9da64c35317e1871f74"

  head "https://github.com/undivisible/vro.git", branch: "main"

  depends_on "vlang" => :build

  def install
    bin.install "vro"
    (share/"vro/syntax").install Dir["syntax/*"]
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
