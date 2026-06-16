class Oil < Formula
  desc "Native Linux package manager with system-PM interop"
  homepage "https://github.com/semitechnological/oil"
  url "https://github.com/semitechnological/oil/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "df8e87c186ea12036023157e7dc85e4d9e43bc44efed4b19df56ee302251b1c0"
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
