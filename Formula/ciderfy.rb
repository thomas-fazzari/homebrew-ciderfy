class Ciderfy < Formula
  desc "CLI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.5/ciderfy-osx-arm64.tar.gz"
      sha256 "0e48557607dd6582a78568e600436c78abdd5ea9f1ad45ffee7c6e9d12396fb7"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.5/ciderfy-osx-x64.tar.gz"
      sha256 "c2b15e294b0cd2468a65f51de742478b7c61cc9d79fe95090783ca8e3f419db3"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.5/ciderfy-linux-x64.tar.gz"
    sha256 "5c6911293caccd296eb893b25cfa3a64f81267ef93fe6c600fa1ff8e78ff848b"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
