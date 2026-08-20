class RsPeekaboo < Formula
  desc "Rust-native cross-platform computer-use CLI and library"
  homepage "https://github.com/undivisible/rs_peekaboo"
  url "https://github.com/undivisible/rs_peekaboo/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "9480fc91a9f8ea6e3e635acad54bc46a9d59206c17f93be3d211dd1d1c3cd5ca"
  license "MPL-2.0"
  version "0.3.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rs-peekaboo", shell_output("#{bin}/rs-peekaboo --help")
  end
end
