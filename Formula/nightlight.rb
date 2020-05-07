class Nightlight < Formula
  desc "A CLI for configuring 'Night Shift' on macOS 🌕🌖🌗🌘🌑"
  homepage "https://github.com/smudge/nightlight"
  url "https://github.com/smudge/nightlight/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "ee4ffbafbaabc9be7376875f84ec16d62dc07223a878559dd5361c36bf063f1e"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "nightlight"
    bin.install "target/release/nightlight"
  end

  test do
    system "#{bin}/nightlight", "--help"
  end
end
