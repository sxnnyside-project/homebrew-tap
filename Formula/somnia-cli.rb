class SomniaCli < Formula
  desc "Zero-allocation procedural audio generator CLI for desktop & AVR"
  homepage "https://github.com/core-red-project/somnia"
  url "https://github.com/core-red-project/somnia/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "c61086d510d1a70204c321a6b5e62a29a776f4d5711c2d77e84bfd6bf9436485"
  license "MIT"
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
