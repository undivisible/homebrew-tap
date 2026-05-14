class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-macos-aarch64.tar.gz"
      sha256 "2ae21d281e854ca275c564a6a3ae063cb70146cd0cdc99837eed0d6e83a5ed40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-linux-x86_64.tar.gz"
      sha256 "6fd94ee6c8231db017a9fc878e91ef47b7f0f81b57b4039a88d164d6b6055f1a"
    end
  end

  def install
    bin.install "vro"
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
