class Animoria < Formula
  desc "Find unused and duplicate visual assets in app and game projects"
  homepage "https://extensions.sxnnysideproject.com/en/animoria/"
  url "https://github.com/sxnnyside-project/animoria/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "12676e07fcf73bca9b690416b808d97e5278fc93557088ee6bbf521603d65fa2"
  license "MIT"
  head "https://github.com/sxnnyside-project/animoria.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "packages/animoria-core-rust")
  end

  test do
    assert_match "animoria", shell_output("#{bin}/animoria --version")
  end
end
