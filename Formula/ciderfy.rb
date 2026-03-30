class Ciderfy < Formula
  desc "CLI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.3/ciderfy-osx-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.3/ciderfy-osx-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.3/ciderfy-linux-x64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
