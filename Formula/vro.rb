class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-macos-aarch64.tar.gz"
      sha256 "aa7f7b232a6687aa3e111430a5297a3b07430e822ce5b3ff3e1c75049aeb6e27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-linux-x86_64.tar.gz"
      sha256 "c5942579cf6911f9a84b0fa9774924da4a7db4acd23c42eed20c6263516cacc1"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.0.1/vro-linux-aarch64.tar.gz"
      sha256 "ea39b77298c38d5948ec54bfeae237c70717f62054d9b0544b34673cd815ede6"
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
