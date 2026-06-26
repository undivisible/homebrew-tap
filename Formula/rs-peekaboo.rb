class RsPeekaboo < Formula
  desc "Rust-native cross-platform computer-use CLI and library"
  homepage "https://github.com/undivisible/rs_peekaboo"
  url "https://github.com/undivisible/rs_peekaboo/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MPL-2.0"
  version "0.3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rs-peekaboo", shell_output("#{bin}/rs-peekaboo --help")
  end
end
