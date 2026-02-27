class CliAquarium < Formula
  desc "A terminal aquarium"
  homepage "https://github.com/rainbowterminal/aquarium"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/rainbowterminal/aquarium/releases/download/v0.1.0/cli-aquarium-macos-arm64.tar.gz"
      sha256 "625c1b9e5780a2ef6b71752f809252d7def34fa006b5e0d23105c5441ad50229"
    end
    on_intel do
      url "https://github.com/rainbowterminal/aquarium/releases/download/v0.1.0/cli-aquarium-macos-x86_64.tar.gz"
      sha256 "bd2f8a26d48b0d9ed760d6d5c53839387263f6a4f10bdb34a66871e9ab7e3247"
    end
  end

  on_linux do
    url "https://github.com/rainbowterminal/aquarium/releases/download/v0.1.0/cli-aquarium-linux-x86_64.tar.gz"
    sha256 "0d8d1a5e04f8a7d2254e2794614eb49cbc0a7ec3181ef49edac942111b4d382e"
  end

  def install
    bin.install "cli-aquarium"
  end

  test do
    assert_predicate bin/"cli-aquarium", :executable?
  end
end
