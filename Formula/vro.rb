class Vro < Formula
  desc "Minimal terminal text editor (micro-inspired)"
  homepage "https://github.com/undivisible/vro"
  license "MPL-2.0"
  version "1.2.1"
  head "https://github.com/undivisible/vro.git", branch: "main"

  # macOS – Apple Silicon (ARM64)
  on_macos do
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.1/vro-macos-aarch64.tar.gz"
      sha256 "2250d91bbf19b9f56d145a96b17f43723a3dfc6037aec63909194af02c6a4bb2"
    end
  end

  # Linux – x86_64 (amd64)
  on_linux do
    on_x86_64 do
      url "https://github.com/undivisible/vro/releases/download/v1.2.1/vro-linux-x86_64.tar.gz"
      sha256 "6ae5e86216a91ea64ab887a7dc087049b63d7326757b55f129729537bc8fe6a3"
    end
    on_arm do
      url "https://github.com/undivisible/vro/releases/download/v1.2.1/vro-linux-aarch64.tar.gz"
      sha256 "3a95925965df219995f28005875d7dc27bd3e8db6bf371216bd8bfc37db8e218"
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
