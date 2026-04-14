class Ciderfy < Formula
  desc "TUI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.7/ciderfy-osx-arm64.tar.gz"
      sha256 "0859ee7752f4fc5429ade506f2318303f08a6d92803f748966014630d6bcf4b8"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.7/ciderfy-osx-x64.tar.gz"
      sha256 "c0d61b7b284ebaf4cefca2144c29d0aef46b1e1dce47bc6364da32181ab8a3a5"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.7/ciderfy-linux-x64.tar.gz"
    sha256 "b0d304f434435ed4cfd21e6ff292197acc94453940fdb23683a5cfe1d007d3c4"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
