class CliAquarium < Formula
  desc "A terminal aquarium"
  homepage "https://github.com/rainbowterminal/aquarium"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/rainbowterminal/aquarium/releases/download/v0.1.0/cli-aquarium-macos-arm64.tar.gz"
      sha256 "REPLACE_AFTER_FIRST_RELEASE"
    end
    on_intel do
      url "https://github.com/rainbowterminal/aquarium/releases/download/v0.1.0/cli-aquarium-macos-x86_64.tar.gz"
      sha256 "REPLACE_AFTER_FIRST_RELEASE"
    end
  end

  on_linux do
    url "https://github.com/rainbowterminal/aquarium/releases/download/v0.1.0/cli-aquarium-linux-x86_64.tar.gz"
    sha256 "REPLACE_AFTER_FIRST_RELEASE"
  end

  def install
    bin.install "cli-aquarium"
  end

  test do
    assert_predicate bin/"cli-aquarium", :executable?
  end
end
