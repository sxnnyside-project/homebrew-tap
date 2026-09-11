class TensorsuggestliteCli < Formula
  include Language::Python::Virtualenv

  desc "Configuration-driven text classification with TFLite export"
  homepage "https://github.com/core-red-project/tensorsuggestlite"
  url "https://github.com/core-red-project/tensorsuggestlite/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "d6014555b85ccb834919bee3b42acacfe9dcf2b12ee10b78f11abb52d310fb70"
  license "MIT"
  head "https://github.com/core-red-project/tensorsuggestlite.git", branch: "main"

  depends_on "python@3.11"

  def install
    virtualenv_create(libexec, "python3.11")
    system libexec/"bin/pip", "install", "."
    bin.install_symlink libexec/"bin/tensorsuggestlite" => "tensorsuggestlite"
    bin.install_symlink libexec/"bin/tensorsuggestlite" => "tensorsuggestlite-cli"
  end

  test do
    assert_match "tensorsuggestlite", shell_output("#{bin}/tensorsuggestlite --help")
    assert_match "tensorsuggestlite", shell_output("#{bin}/tensorsuggestlite-cli --help")
  end
end
