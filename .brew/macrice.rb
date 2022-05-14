class Macrice < Formula
  desc "Macrice is a macOS CLI tool for customization."
  homepage "https://github.com/griffinryan/macrice"
  url "https://github.com/griffinryan/macrice/archive/refs/tags/0.0.2.tar.gz"
  version "0.0.2"
  license "MIT"

  depends_on "toilet"
  depends_on "lolcat"
  depends_on "boxes"

  def install
    bin.install "macrice"
    prefix.install Dir["lib"]
    prefix.install Dir["fonts"]
    prefix.install Dir["dotfiles"]
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    system "false"
  end
end
