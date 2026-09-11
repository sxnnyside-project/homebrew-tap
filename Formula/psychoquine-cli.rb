class PsychoquineCli < Formula
  desc "Meta-programming engine that generates quines across 18 languages"
  homepage "https://github.com/core-red-project/psychoquine-cli"
  url "https://github.com/core-red-project/psychoquine-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "dcbd50d0be2959259d1bc8d0b5b1355a424ef4f5b3839763bfdcc4e93d70d8d8"
  license "MIT"
  head "https://github.com/core-red-project/psychoquine-cli.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "psychoquine", shell_output("#{bin}/psychoquine --version")
  end
end
