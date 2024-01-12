# Generated with JReleaser 1.10.0 at 2024-01-12T08:31:23.115234417Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.10"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-unknown-linux-gnu.zip"
    sha256 "07e1d956625677107b74148adbbc5178970ca552eb0c524687d43b4ec1723b51"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-unknown-linux-gnu.zip"
    sha256 "82e40cbb5febf9cec3651b169755879a10fec0932f717b9032fb43b37a002d6d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-apple-darwin.zip"
    sha256 "536f6baa488f881a7d227d0bcb988fd8ec202006036f90c2ab2b06566bd82887"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-apple-darwin.zip"
    sha256 "5cd828dd22493ca5e18f2b00de3c97a4d4aa13ac26cc5f17bbae506f39ef79ff"
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
