class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.0/vro-macos-aarch64.tar.gz"
      sha256 "6e39ecbf35670cf8b5d0f76322dddfdd28b049264a12d973dbb50131c947b1ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.1.0/vro-linux-x86_64.tar.gz"
      sha256 "215da5872394e981e359a9880a12d68d81f60d03a5ca4e819bf163411b0fb642"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.0/vro-linux-aarch64.tar.gz"
      sha256 "2c99caa8fd1ed3858c0285f776103a5a07389eceac94f4d06bdc8a7482c74999"
    end
  end

  def install
    bin.install "vro"
    (share/"vro/syntax").install Dir["syntax/*"]
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
