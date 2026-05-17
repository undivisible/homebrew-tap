class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/tschk/wax"
  url "https://github.com/tschk/wax/archive/refs/tags/v0.17.8.tar.gz"
  sha256 "daf4d0bbe827fa1f54b5ae8e14b4e1c4073b7c0b2d72bdbc5c9b74bd3d7bb2b8"
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
