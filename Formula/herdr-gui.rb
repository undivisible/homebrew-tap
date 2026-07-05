class HerdrGui < Formula
  desc "macOS GUI for Herdr"
  homepage "https://github.com/undivisible/herdr-gui"
  version "0.1.3"
  license "MPL-2.0"
  head "https://github.com/undivisible/herdr-gui.git", branch: "master"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/herdr-gui/releases/download/v0.1.3/herdr-gui-macos-aarch64.tar.gz"
      sha256 "1517880430641825972685f44241b3c0d59e6c51efd6e7a1592b81e9bb2ff6b4"
    end
  end

  def install
    bin.install "herdr-gui"
  end

  test do
    assert_predicate bin/"herdr-gui", :executable?
  end
end
