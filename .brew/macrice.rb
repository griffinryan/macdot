# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Macrice < Formula
  desc "Macrice is a macOS CLI tool for customization."
  homepage "https://github.com/griffinryan/macrice"
  url "https://github.com/griffinryan/macrice/archive/refs/tags/0.8.0.tar.gz"
  version "0.8.0"
  license "MIT"

  depends_on "toilet"
  depends_on "lolcat"
  depends_on "boxes"

  def install
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install "macrice"
    prefix.install Dir["lib"]
    prefix.install Dir["fonts"]
    prefix.install Dir["dotfiles"]
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test macrice`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
