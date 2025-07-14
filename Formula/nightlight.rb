class Nightlight < Formula
  desc "A CLI for configuring 'Night Shift' on macOS 🌕🌖🌗🌘🌑"
  homepage "https://github.com/smudge/nightlight"
  url "https://github.com/smudge/nightlight/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "sha256:cfe249ca68b51851ffdfccaf3e99d0fbbc0eb8793f36b0e2512596ba854c186f"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "nightlight"
    bin.install "target/release/nightlight"
  end

  test do
    system "#{bin}/nightlight", "--help"
  end
end
