class ObfuskuLsp < Formula
  desc "Language Server Protocol server for the Obfusku programming language"
  homepage "https://github.com/core-red-project/obfusku"
  url "https://github.com/core-red-project/obfusku/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "1f9f4984b529b543c726978690236fd0bb3fe19b71f751c5706a013dbeaa08d6"
  license "MIT"
  head "https://github.com/core-red-project/obfusku.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/obfusku-lsp")
  end

  test do
    assert_match "obfusku-lsp", shell_output("#{bin}/obfusku-lsp --version 2>&1")
  end
end
