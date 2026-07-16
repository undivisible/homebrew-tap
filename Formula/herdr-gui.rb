class HerdrGui < Formula
  desc "macOS GUI for Herdr"
  homepage "https://github.com/undivisible/herdr-gui"
  version "0.1.9"
  license "MPL-2.0"
  head "https://github.com/undivisible/herdr-gui.git", branch: "master"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/herdr-gui/releases/download/v0.1.9/herdr-gui-macos-aarch64.tar.gz"
      sha256 "0aa5db6618f36850301651bc36570bec0af77510094ddc0565c5146432077b16"
    end
  end

  def install
    bin.install "herdr-gui"
  end

  test do
    assert_predicate bin/"herdr-gui", :executable?
  end
end