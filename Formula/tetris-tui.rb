# Generated with JReleaser 1.10.0 at 2024-01-12T11:28:38.781198619Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.10"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-unknown-linux-gnu.zip"
    sha256 "aec3ff1df5e1fc2e36aa23a0ecf6350fd0319794aa49be7bc5956399dee52c00"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-unknown-linux-gnu.zip"
    sha256 "5a7b796d1a13284f97f3b0341278879ce519eae13cd83eb143ed466606938da7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-apple-darwin.zip"
    sha256 "91f4126894d63a60ea9873453e7ec119894702ef1c4682e6768dadfdef4c0543"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-apple-darwin.zip"
    sha256 "01f93bf8b65e922eeef48fb03912aa93b6e73a574a6915ef0416b52b5cd156bb"
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
