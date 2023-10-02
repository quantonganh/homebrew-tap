# Generated with JReleaser 1.8.0 at 2023-10-02T08:19:52.310665955Z
class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.1.8"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.1.8/tetris-tui-0.1.8-aarch64-unknown-linux-gnu.zip"
    sha256 "16a1afbe076349368071cab6903147aa50c87c46e362138f15d94128d072e8e1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.1.8/tetris-tui-0.1.8-x86_64-unknown-linux-gnu.zip"
    sha256 "5ed22181398d3c03fe2628c93d69da6205dcb0e1f19ea8eb214123d2dd507a3d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.1.8/tetris-tui-0.1.8-aarch64-apple-darwin.zip"
    sha256 "2381295928c8d83b87caf7ae3072c8a587563c60edc7cade804b813ffc75097b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.1.8/tetris-tui-0.1.8-x86_64-apple-darwin.zip"
    sha256 "ca9bb22f5f1fffc41902a94d72d735348f4d9def7b793dec64521c19d1d47466"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tetris-tui" => "tetris-tui"
  end

  test do
    output = shell_output("#{bin}/tetris-tui --version")
    assert_match "0.1.8", output
  end
end
