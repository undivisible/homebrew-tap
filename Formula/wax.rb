# NOTE: Versioned bottles will be added once CI publishes release assets.
class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/semitechnological/wax"
  head "https://github.com/semitechnological/wax.git", branch: "master"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "wax", shell_output("#{bin}/wax --version")
  end
end
