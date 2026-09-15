class Obfusku < Formula
  desc "Symbolic Primacy, Strict Hindley-Milner, Tail-Call-Optimized Language"
  homepage "https://github.com/core-red-project/obfusku"
  url "https://github.com/core-red-project/obfusku/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0f5b44c9e4805a074ce6382b2c80aca7737b91e8f2cb3295e0f39882150d84ee"
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
