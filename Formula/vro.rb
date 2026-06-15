class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.1"

  url "https://github.com/undivisible/vro/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "8e6bf55f633fd0d8b182f4e137b5877ea6fec66e8436c29d433efee3e0fc09d5"
  head "https://github.com/undivisible/vro.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
