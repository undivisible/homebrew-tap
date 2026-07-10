class HerdrGui < Formula
  desc "macOS GUI for Herdr"
  homepage "https://github.com/undivisible/herdr-gui"
  version "0.1.4"
  license "MPL-2.0"
  head "https://github.com/undivisible/herdr-gui.git", branch: "master"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/herdr-gui/releases/download/v0.1.4/herdr-gui-macos-aarch64.tar.gz"
      sha256 "7533cbf5c46907db5e38d998466017580dea3d0c6e866f5620068c9949c88b32"
    end
  end

  def install
    bin.install "herdr-gui"
  end

  test do
    assert_predicate bin/"herdr-gui", :executable?
  end
end
