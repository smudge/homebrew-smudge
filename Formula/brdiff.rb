class Brdiff < Formula
  desc "A command-line tool for subtracting images to generate a new blue-red difference image"
  homepage "https://github.com/smudge/brdiff"
  url "https://github.com/smudge/brdiff/archive/0.2.0.tar.gz"
  version "0.2.0"
  sha256 "990bd4149e311190b69e442f413b910fc4c3ecf1d25572e4a32501e0006e5966"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "brdiff"
    bin.install "target/release/brdiff"
  end

  test do
    system "#{bin}/brdiff", "--help"
  end
end
