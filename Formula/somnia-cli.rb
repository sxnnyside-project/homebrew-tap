class SomniaCli < Formula
  desc "Zero-allocation procedural audio generator CLI for desktop & AVR"
  homepage "https://somnia.sxnnysideproject.com/en/"
  url "https://github.com/core-red-project/somnia/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "8485d3de2ae853cf3e2701a0133715bf6034fac6cabe1a6fcc2ddfe5d8593616"
  license "MPL-2.0"
  head "https://github.com/core-red-project/somnia.git", branch: "main"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", "-DCMAKE_BUILD_TYPE=Release", *std_cmake_args
    system "cmake", "--build", "build", "--target", "somnia-cli"
    bin.install "build/cli/somnia-cli"
  end

  test do
    assert_match "somnia", shell_output("#{bin}/somnia-cli --version")
  end
end
