class Animoria < Formula
  desc "Find unused and duplicate visual assets in app and game projects"
  homepage "https://extensions.sxnnysideproject.com/en/animoria/"
  url "https://github.com/sxnnyside-project/animoria/archive/refs/tags/v2.3.3.tar.gz"
  sha256 "06ecf03411261db34acaf61ce14bd1650b3d800b8dcef21397ddbda6bcb32ed7"
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
