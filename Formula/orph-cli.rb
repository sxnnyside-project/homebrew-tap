class OrphCli < Formula
  desc "CLI for reliable workflows on offline Raspberry Pi environments"
  homepage "https://www.sxnnysideproject.com"
  url "https://github.com/core-red-project/orph-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "53d733d010ad655838ee9a1388f7a3a69a267e370ebb821aa6fb6fa064c6c24d"
  license "MIT"
  head "https://github.com/core-red-project/orph-cli.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "orph", shell_output("#{bin}/orph --version")
  end
end
