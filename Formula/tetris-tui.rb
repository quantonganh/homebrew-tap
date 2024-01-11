# Generated with JReleaser 1.10.0 at 2024-01-11T05:58:09.171498226Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.1/tetris-tui-0.2.1-aarch64-unknown-linux-gnu.zip"
    sha256 "93c98d4ae2cfd0d7c9b91eac65b2fcd0bfd697d940ae365490cd7266273fddd6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.1/tetris-tui-0.2.1-x86_64-unknown-linux-gnu.zip"
    sha256 "c860e713dce01c7ef5a4515bf2a063dd5346abe048015e9d503884a0c4811db5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.1/tetris-tui-0.2.1-aarch64-apple-darwin.zip"
    sha256 "d7fcb93706e126f50700961c97929abb31c34caa74ea8353f0bdd9c30796cb35"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.1/tetris-tui-0.2.1-x86_64-apple-darwin.zip"
    sha256 "421b6048f1de78ff0bbfe02bb7ae29a700f4ffb198b511291f47e092b6517423"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tetris-tui" => "tetris-tui"
  end

  test do
    output = shell_output("#{bin}/tetris-tui --version")
    assert_match "0.2.1", output
  end
end
