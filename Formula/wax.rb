class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/plyght/wax"
  url "https://github.com/plyght/wax/archive/refs/tags/v0.20.4.tar.gz"
  sha256 "9f9ad8a6b04427157e72b9b8561b7e37b2de5439ee209cb99fbd120e2de84834"
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
