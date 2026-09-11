class LacunaCli < Formula
  desc "Minimalist CLI data compression suite built in pure C++20"
  homepage "https://www.sxnnysideproject.com/en/"
  url "https://github.com/core-red-project/lacuna-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "39bb8d40b26678df0f1fe59ca00d741dd805215b73c82d2b521504c9f992aa18"
  license "MIT"
  head "https://github.com/core-red-project/lacuna-cli.git", branch: "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    bin.install "build/lacuna"
  end

  test do
    assert_match "lacuna", shell_output("#{bin}/lacuna --version")
  end
end
