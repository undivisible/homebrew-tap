class DriftWallpaper < Formula
  desc "Fluid live wallpaper for macOS, Windows, and Linux"
  homepage "https://github.com/undivisible/drift-wallpaper"
  version "0.1.40"
  head "https://github.com/undivisible/drift-wallpaper.git", branch: "m"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.40/drift-wallpaper-macos-aarch64.tar.gz"
      sha256 "7f33b42c514ead054f84fcda8077213d78ef153147b2f2e73a8d0fdc7c10a338"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/drift-wallpaper/releases/download/v0.1.40/drift-wallpaper-linux-x86_64.tar.gz"
      sha256 "4937a1943c29b1cda0de99ed7a54a5c8716f6ad9887948a55249a1ad0619de9f"
    end
  end

  def install
    bin.install "drift-wallpaper"
  end

  test do
    assert_match "drift-wallpaper", shell_output("#{bin}/drift-wallpaper --version")
  end
end
