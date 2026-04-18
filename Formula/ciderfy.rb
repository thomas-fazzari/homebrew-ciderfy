class Ciderfy < Formula
  desc "TUI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.8/ciderfy-osx-arm64.tar.gz"
      sha256 "547da7a9aa4a25b033e8c30d60f9357eafc9e003d6fff00e53a3e048fc92a185"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.8/ciderfy-osx-x64.tar.gz"
      sha256 "f8d60294b6497f016a51dbe6c6ace4f213c38deacf4ba197ac1d6d7bf0b6324b"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.8/ciderfy-linux-x64.tar.gz"
    sha256 "9c0e4906f6417818744b18683f85586e0c2f7d6fe5a34215600a86f9184033e2"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
