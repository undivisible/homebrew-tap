class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  head "https://github.com/undivisible/vro.git", branch: "main"

  depends_on "vlang" => :build

  def install
    system "v", "-gc", "none", "-prod", "-o", "vro", "main.v"
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
