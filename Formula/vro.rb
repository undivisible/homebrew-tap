class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.1.4"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.4/vro-macos-aarch64.tar.gz"
      sha256 "57f03097533dff823a2d59456d3c0df43a410d1f69b1cd6ec9cdf8d0160997be"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.1.4/vro-linux-x86_64.tar.gz"
      sha256 "4e8ea2344e86f916f204a58b29c5b45fdb9d78d73d48546c40348f138c246a29"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.1.4/vro-linux-aarch64.tar.gz"
      sha256 "63a81bb34a80f0026fd253774513f506d47d055e628fa49c3aab25ec9de6ccad"
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
