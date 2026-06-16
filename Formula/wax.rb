class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/tschk/wax"
  url "https://github.com/tschk/wax/archive/refs/tags/v0.18.0.tar.gz"
  sha256 "99c75f168f77b788f1d313bf822eca7c0168c047fb700f081e680f2f61f7f7ec"
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
