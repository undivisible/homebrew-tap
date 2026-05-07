class DriftWallpaper < Formula
  desc "Fluid live wallpaper for macOS, Windows, and Linux"
  homepage "https://github.com/undivisible/drift-wallpaper"
  version "0.1.41"
  head "https://github.com/undivisible/drift-wallpaper.git", branch: "m"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.41/drift-wallpaper-macos-aarch64.tar.gz"
      sha256 "8857ab475099fdf0d1d55596df819a7d0d70bb92a854169fd8017fbae449be61"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.41/drift-wallpaper-linux-x86_64.tar.gz"
      sha256 "221758a724fe54229348a347d9776e81b0d69ff8c4f5c8beb1a25094ff2a0867"
    end
  end

  def install
    bin.install Dir["drift-wallpaper-*"].first => "drift-wallpaper"
  end

  test do
    assert_match "drift-wallpaper", shell_output("#{bin}/drift-wallpaper --help")
  end
end
