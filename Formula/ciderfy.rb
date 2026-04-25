class Ciderfy < Formula
  desc "TUI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.9/ciderfy-osx-arm64.tar.gz"
      sha256 "2b165f0ff26e9c7690ec35d125371945973bb8f905351b5abd95c3b92fe35006"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.9/ciderfy-osx-x64.tar.gz"
      sha256 "b75d587701bfe97093466a226ef579e6f68888b2af954071cbc13ea38ea91ff5"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.9/ciderfy-linux-x64.tar.gz"
    sha256 "b4ce388c5d9a6f16e8e2560183ce79928c63db206ef577cd587218fac66a8119"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
