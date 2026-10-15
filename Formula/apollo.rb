class Apollo < Formula
  desc "Openclaw for builders — lightweight AI agent runtime"
  homepage "https://github.com/tschk/apollo"
  license "MIT"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/tschk/apollo/releases/download/v0.8.0/apollo-macos-aarch64.tar.gz"
      sha256 "5b643d01a1802097a17d046b510ae8ef6ec00723da83b9d77dc7178a573a0318"
    end
    on_intel do
      url "https://github.com/tschk/apollo/releases/download/v0.8.0/apollo-macos-x86_64.tar.gz"
      sha256 "0dc91c8512573777bad1eed66973c65ea6fc9b7ae5ce9d3659ed9b09494daf9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tschk/apollo/releases/download/v0.8.0/apollo-linux-x86_64.tar.gz"
      sha256 "044308e45ced8a4dcd3e5bf1b9c1f2205089fc17e8129b9ba4989b3591dcc8ff"
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
