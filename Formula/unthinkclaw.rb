class Unthinkclaw < Formula
  desc "Lightweight AI agent runtime — Telegram-first, SurrealDB memory"
  homepage "https://github.com/undivisible/unthinkclaw"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/undivisible/unthinkclaw/releases/download/v0.1.1/unthinkclaw-macos-aarch64.tar.gz"
      sha256 "abd8a9fc2dede6ab64c03986dedec855bf83beebe383e6c5cf244af8386fb35f"
    end
    on_intel do
      url "https://github.com/undivisible/unthinkclaw/releases/download/v0.1.1/unthinkclaw-macos-x86_64.tar.gz"
      sha256 "a089fd3355f53bb6653879ad11e5f558eaa94b9133123daad4492c4fef3b990b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/undivisible/unthinkclaw/releases/download/v0.1.1/unthinkclaw-linux-x86_64.tar.gz"
      sha256 "4477fd420db383f972847b085f7acbc21fd68f74eb58b70e757d32ac30dd46db"
    end
  end

  def install
    bin.install "unthinkclaw"
  end

  test do
    assert_match "unthinkclaw", shell_output("#{bin}/unthinkclaw --help")
  end
end
