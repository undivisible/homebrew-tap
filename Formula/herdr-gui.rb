class HerdrGui < Formula
  desc "macOS GUI for Herdr"
  homepage "https://github.com/undivisible/herdr-gui"
  version "0.1.8"
  license "MPL-2.0"
  head "https://github.com/undivisible/herdr-gui.git", branch: "master"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/herdr-gui/releases/download/v0.1.8/herdr-gui-macos-aarch64.tar.gz"
      sha256 "ac5f8477c27b1adff057c41862e7e8da0426f9773e1ce655d9603d1971e608b6"
    end
  end

  def install
    bin.install "herdr-gui"
  end

  test do
    assert_predicate bin/"herdr-gui", :executable?
  end
end