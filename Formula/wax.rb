class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/plyght/wax"
  url "https://github.com/plyght/wax/archive/refs/tags/v0.20.21.tar.gz"
  sha256 "c63fa0cc635278d83d8338b9b7e133bdc2267728c10baf92918352285f0e844d"
  head "https://github.com/plyght/wax.git", branch: "master"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "wax", shell_output("#{bin}/wax --version")
  end
end
