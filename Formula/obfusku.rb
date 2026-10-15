class Obfusku < Formula
  desc "Symbolic Primacy, Strict Hindley-Milner, Tail-Call-Optimized Language"
  homepage "https://github.com/core-red-project/obfusku"
  url "https://github.com/core-red-project/obfusku/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "1f9f4984b529b543c726978690236fd0bb3fe19b71f751c5706a013dbeaa08d6"
  license "MIT"
  head "https://github.com/core-red-project/obfusku.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/obfusku-cli")
    system "cargo", "install", *std_cargo_args(path: "crates/obfusku-lsp")
  end

  test do
    assert_match "obfusku 1.0.0", shell_output("#{bin}/obfusku --version")
  end
end
