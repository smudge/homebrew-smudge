class Nightlight < Formula
  desc "A CLI for configuring 'Night Shift' on macOS 🌕🌖🌗🌘🌑"
  homepage "https://github.com/smudge/nightlight"
  url "https://github.com/smudge/nightlight/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "8d99a0dec5a11d5b73a9e82a24f4b51a8d18719d6ab85428b66bc18b3219063b"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "nightlight"
    bin.install "target/release/nightlight"
  end

  test do
    system "#{bin}/nightlight", "--help"
  end
end
