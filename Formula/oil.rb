class Oil < Formula
  desc "Native Linux package manager with system-PM interop"
  homepage "https://github.com/semitechnological/oil"
  url "https://github.com/semitechnological/oil/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7bcaa4f827e8c4fc2249f36d7a9eeae4078a88500b7a717564cea51edbf9a195"
  head "https://github.com/semitechnological/oil.git", branch: "master"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "oil", shell_output("#{bin}/oil --version")
  end
end
