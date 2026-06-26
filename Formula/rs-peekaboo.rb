class RsPeekaboo < Formula
  desc "Rust-native cross-platform computer-use CLI and library"
  homepage "https://github.com/undivisible/rs_peekaboo"
  url "https://github.com/undivisible/rs_peekaboo/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "a430bd3861049edffb2fdec15d49c019fded18f5385edb1030302764d9401da5"
  license "MPL-2.0"
  version "0.3.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rs-peekaboo", shell_output("#{bin}/rs-peekaboo --help")
  end
end
