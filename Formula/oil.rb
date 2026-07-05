class Oil < Formula
  desc "Native Linux package manager with system-PM interop"
  homepage "https://github.com/semitechnological/oil"
  url "https://github.com/semitechnological/oil/archive/refs/tags/v0.3.11.tar.gz"
  sha256 "cb17296cccc891fadee5bea11e4cd0c7e9951ae509443b816c239f7b214600d6"
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
