class Tk < Formula
  desc "AI coding agent TUI — rx4 harness + crepuscularity-tui"
  homepage "https://github.com/semitechnological/telekinesis"
  license "MPL-2.0"
  version "0.2.20"
  head "https://github.com/semitechnological/telekinesis.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.20/tk-aarch64-apple-darwin.tar.gz"
      sha256 "716581d1bef36ebb27dee41e5442a55bb0bc6161a81af6274e39a86c63cd00aa"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.20/tk-x86_64-apple-darwin.tar.gz"
      sha256 "21c463d11c7a246d62af77c6fa7408e69aeed836eb6610caa18d33bd6276965d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.20/tk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "864db4d203fb10f460b79bccc06c23f8ddceb35af4005e2955dd89e91796cdab"
    end
    on_intel do
      url "https://github.com/semitechnological/telekinesis/releases/download/v0.2.20/tk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e52758c212a12df534086ebe44a2814a6fa69a37ff28bd9d5b28168e542840ed"
    end
  end

  def install
    bin.install "tk"
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk --help")
  end
end
