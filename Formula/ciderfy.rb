class Ciderfy < Formula
  desc "CLI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.6/ciderfy-osx-arm64.tar.gz"
      sha256 "fa4bb160f362011218e1fae7d3f990ef921246fdd5b2b51fe49366d57a9180bf"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.6/ciderfy-osx-x64.tar.gz"
      sha256 "bcaf0b4588673d61535a8dc8be948eb939e3f2d48f1ac5d4b120effd4d206bfa"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.6/ciderfy-linux-x64.tar.gz"
    sha256 "2b4688e61bd479b5faa55ed73f2ab92e23f8c4bb76b8c6db453f862bdb7e9214"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
