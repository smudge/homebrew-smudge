class Nightlight < Formula
  desc "A CLI for configuring 'Night Shift' on macOS 🌕🌖🌗🌘🌑"
  homepage "https://github.com/smudge/nightlight"
  url "https://github.com/smudge/nightlight/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "db7f24f56146dcd611836c8bce16067489e53e1de749ae4426177c8cb1b11398"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "nightlight"
    bin.install "target/release/nightlight"
  end

  test do
    system "#{bin}/nightlight", "--help"
  end
end
