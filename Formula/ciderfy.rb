class Ciderfy < Formula
  desc "CLI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.3/ciderfy-osx-arm64.tar.gz"
      sha256 "a67cf07999f07a1e955f2e98486c1b5a22a4e03597a1e48fa7450ad18ba9e566"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.3/ciderfy-osx-x64.tar.gz"
      sha256 "b2fa4d45a76bb2e97d9c07b70ef301a7d41a7fb7c5a67853cda18eaa88c42737"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.3/ciderfy-linux-x64.tar.gz"
    sha256 "410be9e77c5f8c01b9ae9e4ec5d22e7ca88f580e0c0e7cd5afec55f4bfdec409"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
