class Nightlight < Formula
  desc "A CLI for configuring 'Night Shift' on macOS 🌕🌖🌗🌘🌑"
  homepage "https://github.com/smudge/nightlight"
  url "https://github.com/smudge/nightlight/archive/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "50654920a0c68283f1e1f6b7795bf4b4c723fdf09b0121c88e73954ffed8ea20"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "nightlight"
    bin.install "target/release/nightlight"
  end

  test do
    system "#{bin}/nightlight", "--help"
  end
end
