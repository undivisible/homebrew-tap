class HerdrGui < Formula
  desc "macOS GUI for Herdr"
  homepage "https://github.com/undivisible/herdr-gui"
  version "0.1.7"
  license "MPL-2.0"
  head "https://github.com/undivisible/herdr-gui.git", branch: "master"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/herdr-gui/releases/download/v0.1.7/herdr-gui-macos-aarch64.tar.gz"
      sha256 "1c347905195eff47d6f182ccd1212871fafb564a8c75e155f64eab9b84c1d694"
    end
  end

  def install
    bin.install "herdr-gui"
  end

  test do
    assert_predicate bin/"herdr-gui", :executable?
  end
end