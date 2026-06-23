class DriftWallpaper < Formula
  desc "Fluid live wallpaper for macOS, Windows, and Linux"
  homepage "https://github.com/undivisible/drift-wallpaper"
  version "0.1.43"
  head "https://github.com/undivisible/drift-wallpaper.git", branch: "m"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.43/drift-wallpaper-macos-aarch64.tar.gz"
      sha256 "0ef2845a9d947a2b35689155df567f930417cefdfb576d069ded958277e1b6bf"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.43/drift-wallpaper-linux-x86_64.tar.gz"
      sha256 "6c7a8b7f70c2f94b2bf5b7038904525689ee619bf52021ff580db1ee40346226"
    end
  end

  def install
    bin.install Dir["drift-wallpaper-*"].first => "drift-wallpaper"
  end

  test do
    assert_match "drift-wallpaper", shell_output("#{bin}/drift-wallpaper --help")
  end
end
