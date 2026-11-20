class Debuggatha < Formula
  desc "Repo-aware code reviewer for AI coding agents"
  homepage "https://github.com/sxnnyside-project/debuggatha"
  url "https://github.com/sxnnyside-project/debuggatha/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "093160775547b375fa5b36a994a2f57e5a979ffc7c7742ac3d52c8dc3eb223d7"
  license "MIT"
  head "https://github.com/sxnnyside-project/debuggatha.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/debuggatha-cli")
  end

  test do
    assert_match "debuggatha", shell_output("#{bin}/debuggatha --version")
  end
end
