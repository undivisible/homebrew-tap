class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  head "https://github.com/undivisible/poke-around.git", branch: "main"

  depends_on "bun" => :build
  depends_on "zig" => :build
  depends_on "node"

  def install
    system "bun", "install", "--frozen-lockfile", chdir: "bridge"
    system "bun", "run", "build:bridge"
    system "zig", "build", *std_zig_args
    cp_r "bridge/dist/traybin", bin
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
