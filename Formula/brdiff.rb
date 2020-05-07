class Brdiff < Formula
  desc "A command-line tool for subtracting images to generate a new blue-red difference image"
  homepage "https://github.com/smudge/brdiff"
  url "https://github.com/smudge/brdiff/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "1c57fb51f832ca7374c1ee73fb767f1079319f05593b25f0701ac84df7027693"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "brdiff"
    bin.install "target/release/brdiff"
  end

  test do
    system "#{bin}/brdiff", "--help"
  end
end
