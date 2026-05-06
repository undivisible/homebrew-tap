class DriftWallpaper < Formula
  desc "Fluid live wallpaper for macOS, Windows, and Linux"
  homepage "https://github.com/undivisible/drift-wallpaper"
  head "https://github.com/undivisible/drift-wallpaper.git", branch: "m"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/drift-wallpaper/releases/latest/download/drift-wallpaper-macos-aarch64.tar.gz"
      sha256 :no_check
    end

    # macOS – Intel (x86_64)
    on_intel do
      url "https://github.com/undivisible/drift-wallpaper/releases/latest/download/drift-wallpaper-macos-x86_64.tar.gz"
      sha256 :no_check
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/drift-wallpaper/releases/latest/download/drift-wallpaper-linux-x86_64.tar.gz"
      sha256 :no_check
    end

    # Linux – ARM64 (aarch64)
    on_arm do
      url "https://github.com/undivisible/drift-wallpaper/releases/latest/download/drift-wallpaper-linux-aarch64.tar.gz"
      sha256 :no_check
    end
  end

  def install
    bin.install "drift-wallpaper"
  end

  test do
    assert_match "drift-wallpaper", shell_output("#{bin}/drift-wallpaper --version")
  end
end
