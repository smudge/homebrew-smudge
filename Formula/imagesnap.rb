class Imagesnap < Formula
  desc "A CLI for capturing images 📷 📸 🖼️"
  homepage "https://github.com/smudge/imagesnap"
  url "https://github.com/smudge/imagesnap/archive/v0.0.1.tar.gz"
  version "0.3.0"
  sha256 "31d1a00a873761370cd531b2a1cfd3aa6231ec8ca782657f679718c776d1faf8"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "imagesnap"
    bin.install "target/release/imagesnap"
  end

  test do
    system "#{bin}/imagesnap", "--help"
  end
end
