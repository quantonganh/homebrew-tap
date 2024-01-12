# Generated with JReleaser 1.10.0 at 2024-01-12T12:45:18.789730432Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.10"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-unknown-linux-gnu.zip"
    sha256 "d3c402f0fe77529b8c0c4a583b4bbd49606827f100a85772d64ca38d298be22f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-unknown-linux-gnu.zip"
    sha256 "5f1dc562b0ec7662a3dea636529829510e2d04a49efc1062540a01bf86933f13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-aarch64-apple-darwin.zip"
    sha256 "4ae227a19c3732eab6a562fe435ae08f836a896655133ea84727c90765823c16"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.10/tetris-tui-0.2.10-x86_64-apple-darwin.zip"
    sha256 "b936b504a4bbc5d382cc1d8dc484581e601bb9efa1774aed1839e55b01ecad89"
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
