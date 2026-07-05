class Oil < Formula
  desc "Native Linux package manager with system-PM interop"
  homepage "https://github.com/semitechnological/oil"
  url "https://github.com/semitechnological/oil/archive/refs/tags/v0.3.9.tar.gz"
  sha256 "20676f32386c2e879f7cc2b3a2e64a9f30f09b6bf0165cd2998422d5aa8f84a0"
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
