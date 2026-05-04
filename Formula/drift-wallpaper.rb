class DriftWallpaper < Formula
  desc "Fluid live wallpaper for macOS"
  homepage "https://github.com/undivisible/drift-wallpaper"
  version "0.1.0"
  license "MPL-2.0"
  head "https://github.com/undivisible/drift-wallpaper.git", branch: "cross-platform-port"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "-p", "drift-app", "--locked"
    bin.install "target/release/drift-wallpaper"
  end

  test do
    assert_match "drift-wallpaper", shell_output("#{bin}/drift-wallpaper --version")
  end
end
