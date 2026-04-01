class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/plyght/wax"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/plyght/wax/releases/download/v0.9.1/wax-macos-arm64"
      sha256 "45796850cc189eba5e845e58acb0b5dc86eb8b7422eca2c7522bf1b888825fbf"

      def install
        bin.install "wax-macos-arm64" => "wax"
      end
    end

    on_intel do
      url "https://github.com/plyght/wax/releases/download/v0.9.1/wax-macos-x64"
      sha256 "283305d9f12c67d8829a2ce5273a3933fc22e03bf05d8050e55ef5bdf05ed079"

      def install
        bin.install "wax-macos-x64" => "wax"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/plyght/wax/releases/download/v0.9.1/wax-linux-arm64"
      sha256 "e8a5f3de6902fa36d08966aee38cb35df2af4b03878563f0b2a27f8ac1a4bd0f"

      def install
        bin.install "wax-linux-arm64" => "wax"
      end
    end

    on_intel do
      url "https://github.com/plyght/wax/releases/download/v0.9.1/wax-linux-x64"
      sha256 "d995f9e42cdd5680a94bd501c95972a7259705731202ad42704cc86df27109e0"

      def install
        bin.install "wax-linux-x64" => "wax"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wax --version")
  end
end
