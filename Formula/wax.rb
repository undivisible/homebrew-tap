class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/plyght/wax"
  url "https://github.com/plyght/wax/archive/refs/tags/v0.20.17.tar.gz"
  sha256 "75b4d75c9763c75ec3da722a8c3f21b22d24411d3c35e87cfcdc03903b8db5ea"
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
