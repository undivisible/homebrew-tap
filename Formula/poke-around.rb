class PokeAround < Formula
  desc "Expose your machine to your Poke AI assistant via an MCP tunnel"
  homepage "https://github.com/undivisible/poke-around"
  license "MPL-2.0"
  head "https://github.com/undivisible/poke-around.git", branch: "main"

  depends_on "node"
  depends_on "zig" => :build

  def install
    system "npm", "install", "--save-dev", "esbuild"
    system "npx", "esbuild", "bridge/poke-bridge.ts",
           "--bundle", "--platform=node",
           "--outfile=bridge/dist/poke-around-bridge.js"
    system "zig", "build", *std_zig_args
    bin.install "zig-out/bin/poke-around"
    bin.install "bridge/dist/poke-around-bridge.js" => "poke-around-bridge.js"
  end

  test do
    assert_match "poke-around", shell_output("#{bin}/poke-around --help")
  end
end
