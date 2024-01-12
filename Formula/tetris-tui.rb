# Generated with JReleaser 1.10.0 at 2024-01-12T07:55:21.491389165Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.10"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-unknown-linux-gnu.zip"
    sha256 "d42402f1da96d104fe211b1de895e661153dda0edd148fff22fc110d2fb83951"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-unknown-linux-gnu.zip"
    sha256 "e9fccee2e76514e3602098377694eb34b221ca495f3124097fc5a9d0f1d98843"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-apple-darwin.zip"
    sha256 "07482d3a0c15b3d18f82bfd9a57452e1e017e31250c06749bc2f6462d2ed4e11"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-apple-darwin.zip"
    sha256 "d29541dcf7281061ac41813418d802cde1a102f7050ebbba7bc03e56481a0c3b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tetris-tui" => "tetris-tui"
  end

  test do
    output = shell_output("#{bin}/tetris-tui --version")
    assert_match "0.2.10", output
  end
end
