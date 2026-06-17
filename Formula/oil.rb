class Oil < Formula
  desc "Native Linux package manager with system-PM interop"
  homepage "https://github.com/semitechnological/oil"
  url "https://github.com/semitechnological/oil/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "43a8d5bab41221043ec78a90fafdeaccbd56294f0e1177a778c9414b969c7a66"
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
