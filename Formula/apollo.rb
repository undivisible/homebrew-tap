class Apollo < Formula
  desc "Openclaw for builders — lightweight AI agent runtime"
  homepage "https://github.com/tschk/apollo"
  license "MIT"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/tschk/apollo/releases/download/v0.6.2/apollo-macos-aarch64.tar.gz"
      sha256 "98289d4137faba7e93a9130ad4077e0e4c2a6850acf406d1e08fa71be5dfaedd"
    end
    on_intel do
      url "https://github.com/tschk/apollo/releases/download/v0.6.2/apollo-macos-x86_64.tar.gz"
      sha256 "f78c4761c23949254b489235bb7fb34443e80d750752fa1ab430816d56345f98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tschk/apollo/releases/download/v0.6.2/apollo-linux-x86_64.tar.gz"
      sha256 "9fa40c56f5d08a537f262ec352ea308bce641862b65f7903c272b6ef9e284762"
    end
  end

  def install
    bin.install "apollo"
    bin.install "apollo-tui" if File.exist?("apollo-tui")
  end

  test do
    assert_match "apollo", shell_output("#{bin}/apollo --help")
  end
end
