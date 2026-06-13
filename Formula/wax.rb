class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/tschk/wax"
  url "https://github.com/tschk/wax/archive/refs/tags/v0.17.14.tar.gz"
  sha256 "587e86c7b0eddd878849caf6cb5872ddf3201e009e4b8e5813bea605ae6ee78c"
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
