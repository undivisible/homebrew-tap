class Inauguration < Formula
  desc "Multi-language compiler with JIT, Core IR, and 40 frontends"
  homepage "https://github.com/tschk/inauguration"
  version "0.6.14"
  head "https://github.com/tschk/inauguration.git", branch: "master"

  on_macos do
    on_arm do
      url "https://github.com/tschk/inauguration/releases/download/v0.6.14/in-macos-aarch64.tar.gz"
      sha256 "2ebaf31b01170f7bbeb7bfca97676a3f26ee694edfabce47ec87c4034e3ec93b"
    end
  end

  on_linux do
    on_x86_64 do
      url "https://github.com/tschk/inauguration/releases/download/v0.6.14/in-linux-x86_64.tar.gz"
      sha256 "2ebaf31b01170f7bbeb7bfca97676a3f26ee694edfabce47ec87c4034e3ec93b"
    end
  end

  def install
    bin.install "in"
  end

  test do
    assert_match "inauguration", shell_output("#{bin}/in --help")
  end
end
