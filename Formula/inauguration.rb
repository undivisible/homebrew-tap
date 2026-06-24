class Inauguration < Formula
  desc "Multi-language compiler with JIT, Core IR, and 40 frontends"
  homepage "https://github.com/tschk/inauguration"
  version "0.6.5"
  head "https://github.com/tschk/inauguration.git", branch: "master"

  on_macos do
    on_arm do
      url "https://github.com/tschk/inauguration/releases/download/v0.6.5/in-macos-aarch64.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    on_x86_64 do
      url "https://github.com/tschk/inauguration/releases/download/v0.6.5/in-linux-x86_64.tar.gz"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "in"
  end

  test do
    assert_match "inauguration", shell_output("#{bin}/in --help")
  end
end
