class Oil < Formula
  desc "Native Linux package manager with system-PM interop"
  homepage "https://github.com/semitechnological/oil"
  url "https://github.com/semitechnological/oil/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "027c649fd2e16af83fcb680104a0ec2757cdc5a5a57a664f43f6621a2b57a790"
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
