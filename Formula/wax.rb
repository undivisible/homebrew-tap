class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/tschk/wax"
  url "https://github.com/tschk/wax/archive/refs/tags/v0.17.13.tar.gz"
  sha256 "f07b189bc40b77536010dfb012abdb31fa9d8080219fa1eed0cf730e51645892"
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
