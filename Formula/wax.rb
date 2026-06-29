class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/plyght/wax"
  url "https://github.com/plyght/wax/archive/refs/tags/v0.20.3.tar.gz"
  sha256 "e4352c9e57fdababf2d30d561e45adf4220e5a93a5fe6252fe4f890821499bae"
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
