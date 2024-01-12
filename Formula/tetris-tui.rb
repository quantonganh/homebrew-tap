# Generated with JReleaser 1.10.0 at 2024-01-12T01:24:45.813102092Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.2"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.2/tetris-tui-0.2.2-aarch64-unknown-linux-gnu.zip"
    sha256 "9161bac92c4faf703225903ecaf1bd32308794db1e82a37e3fa8d0197e14ca6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.2/tetris-tui-0.2.2-x86_64-unknown-linux-gnu.zip"
    sha256 "d42dda3b37a701231fb9aa69593f25903b204f74cdaeb7aea7c9ff83d190b898"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.2/tetris-tui-0.2.2-aarch64-apple-darwin.zip"
    sha256 "a0dbd7950dff7a2861471be52a32caa7467711f00b6a53cfff8b6d2e388ff212"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.2/tetris-tui-0.2.2-x86_64-apple-darwin.zip"
    sha256 "0b10d74fe59406fd871d01ce50b374dd3a38e702ff698a0340d335fc6ee7d42d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tetris-tui" => "tetris-tui"
  end

  test do
    output = shell_output("#{bin}/tetris-tui --version")
    assert_match "0.2.2", output
  end
end
