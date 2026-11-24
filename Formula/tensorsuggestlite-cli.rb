class TensorsuggestliteCli < Formula
  include Language::Python::Virtualenv

  desc "Configuration-driven text classification with TFLite export"
  homepage "https://github.com/core-red-project/tensorsuggestlite"
  url "https://github.com/core-red-project/tensorsuggestlite/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "bf48aad43693bc35603492c307408a0003ddfeb13ef6159e58bc33d2ebc35430"
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
