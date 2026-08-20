class Inauguration < Formula
  desc "Multi-language compiler with JIT, Core IR, and 40 frontends"
  homepage "https://github.com/tschk/inauguration"
  version "0.9.6"
  head "https://github.com/tschk/inauguration.git", branch: "master"

  on_macos do
    on_arm do
      url "https://github.com/tschk/inauguration/releases/download/v0.9.6/in-macos-aarch64.tar.gz"
      sha256 "a08ecf4825902d9afcccd7aa3a66992146fd96d1ab3e3f31efc911061181779d"
    end
  end

  on_linux do
    on_x86_64 do
      url "https://github.com/tschk/inauguration/releases/download/v0.9.6/in-linux-x86_64.tar.gz"
      sha256 "93eb2e451e58e63723d14e18ef56d8717855b1cef9eee0fc15d6e6c3de76ed02"
    end
  end

  def install
    bin.install "in"
  end

  test do
    assert_match "inauguration", shell_output("#{bin}/in --help")
  end
end
