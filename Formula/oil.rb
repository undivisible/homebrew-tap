class Oil < Formula
  desc "Native Linux package manager with system-PM interop"
  homepage "https://github.com/semitechnological/oil"
  url "https://github.com/semitechnological/oil/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e67bbf57991c2077b58e8d163ebf97965c7c0e857bd9f814ea7efea28a34f411"
  head "https://github.com/semitechnological/oil.git", branch: "master"
  license "MPL-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "oil", shell_output("#{bin}/oil --version")
  end
end
