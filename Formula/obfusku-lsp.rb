class ObfuskuLsp < Formula
  desc "Language Server Protocol server for the Obfusku programming language"
  homepage "https://github.com/core-red-project/obfusku"
  url "https://github.com/core-red-project/obfusku/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"
  head "https://github.com/core-red-project/obfusku.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/obfusku-lsp")
  end

  test do
    assert_match "obfusku-lsp", shell_output("#{bin}/obfusku-lsp --version 2>&1", 0)
  end
end
