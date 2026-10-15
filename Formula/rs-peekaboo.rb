class RsPeekaboo < Formula
  desc "Rust-native cross-platform computer-use CLI and library"
  homepage "https://github.com/undivisible/rs_peekaboo"
  url "https://github.com/undivisible/rs_peekaboo/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "f5d38bae2f9dd39f4f627e57e85e84d1002db027e0999b709c88764b8bd91097"
  license "MPL-2.0"
  version "0.3.5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rs-peekaboo", shell_output("#{bin}/rs-peekaboo --help")
  end
end
