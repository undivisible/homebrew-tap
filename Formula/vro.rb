class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.3/vro-macos-aarch64.tar.gz"
      sha256 "f23cbda8daa48f1e9e5fefb544903004aba3d4d7786b3242315dd83a6072f9c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.3/vro-linux-x86_64.tar.gz"
      sha256 "17e0457132389e2f1e1932a76f9b2ee88a46ce028cf8b5e15905d141b4a88270"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.3/vro-linux-aarch64.tar.gz"
      sha256 "b3e0396a648fd2fff53bf42814358718c3cb908829c2e889d9324ce605153f67"
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
