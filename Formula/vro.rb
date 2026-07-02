class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.2.0"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-macos-aarch64.tar.gz"
      sha256 "9949ac3324859f481c5ba49fcd99f423d6120904b9a7f1b80e886acf9dc37c57"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-x86_64.tar.gz"
      sha256 "bc4cf4f123609bd5233e7194c1f41a84143f28fd0a6b8945edc20931c698a3c6"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.0/vro-linux-aarch64.tar.gz"
      sha256 "b2eb42fe8dc1c6fde04d65a51914ec20506db018f619e0592aeb4ef3698c15c6"
    end
  end

  def install
    bin.install "vro"
    (share/"vro/syntax").install Dir["syntax/*"]
  end

  test do
    assert_predicate bin/"vro", :executable?
  end
end
