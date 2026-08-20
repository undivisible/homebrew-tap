class DriftWallpaper < Formula
  desc "Fluid live wallpaper for macOS, Windows, and Linux"
  homepage "https://github.com/undivisible/drift-wallpaper"
  version "0.1.44"
  head "https://github.com/undivisible/drift-wallpaper.git", branch: "m"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.44/drift-wallpaper-macos-aarch64.tar.gz"
      sha256 "7dc7fdf50402756c57eac5e5cb009618b6f2225ade829becd49bd0f2068ecd5c"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.44/drift-wallpaper-linux-x86_64.tar.gz"
      sha256 "510b0b0559c6ab6fd890a91b3cb9e77a8c6a6ffeb7df7cadb6aee8e718ef3c3a"
    end
  end

  def install
    bin.install Dir["drift-wallpaper-*"].first => "drift-wallpaper"
  end

  test do
    assert_match "drift-wallpaper", shell_output("#{bin}/drift-wallpaper --help")
  end
end
