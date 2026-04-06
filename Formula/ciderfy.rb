class Ciderfy < Formula
  desc "CLI tool to transfer Spotify playlists to Apple Music"
  homepage "https://github.com/thomas-fazzari/ciderfy"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.4/ciderfy-osx-arm64.tar.gz"
      sha256 "35bd8ea9e35816c05a110dc27e90dac800e7b6fc920fa2a251563026241b53bc"
    else
      url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.4/ciderfy-osx-x64.tar.gz"
      sha256 "2235acf92f12496c8b6fe6ef3e54be1096f7c65ba49cb4845eac0e0875eafed8"
    end
  end

  on_linux do
    url "https://github.com/thomas-fazzari/ciderfy/releases/download/v1.0.4/ciderfy-linux-x64.tar.gz"
    sha256 "fc8c1007ccbf7422656fee86f9f03fadd7a01020023dcaf9dd56bade95853811"
  end

  def install
    bin.install "ciderfy"
  end

  test do
    assert_predicate bin/"ciderfy", :executable?
  end
end
