class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/tschk/wax"
  url "https://github.com/tschk/wax/archive/refs/tags/v0.17.12.tar.gz"
  sha256 "9bea9f168ddfcc30964d216f62229a96a16860a5732b30cd06f4f6de7df8a8ee"
  head "https://github.com/tschk/wax.git", branch: "master"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "wax", shell_output("#{bin}/wax --version")
  end
end
