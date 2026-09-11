class Somnia < Formula
  desc "Zero-allocation procedural audio generator CLI for desktop & AVR"
  homepage "https://github.com/core-red-project/somnia"
  url "https://github.com/core-red-project/somnia/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a4bcb0235fd4a91c1182201070e0506221e733495d8a46ae321ed3b61d5c2617"
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
