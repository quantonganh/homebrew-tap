# Generated with JReleaser 1.10.0 at 2024-01-12T11:02:41.932930799Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.10"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-unknown-linux-gnu.zip"
    sha256 "a379018d4a15bd971eeeab87b293e211dca5ac447f044c9d2fc479b0b2cd495a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-unknown-linux-gnu.zip"
    sha256 "6dbba8a98d2b3dbc127c5fb8120801b132de2bb80dc9150fc46e8d019bdfadb0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-apple-darwin.zip"
    sha256 "d98c4bc6caa196a2305939f8b473001325d68545883c46c0d1d41a8db800f41a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-apple-darwin.zip"
    sha256 "cebe3ead37de9eff77830bda184217da31be1a4bcd24ae5cdd3de8891d375cbd"
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
