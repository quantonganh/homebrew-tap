# Generated with JReleaser 1.10.0 at 2024-01-09T14:33:59.153971095Z

class TetrisTui < Formula
  desc "Play tetris in the terminal"
  homepage "https://github.com/quantonganh/tetris-tui/"
  version "0.2.0"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.0/tetris-tui-0.2.0-aarch64-unknown-linux-gnu.zip"
    sha256 "1d12629dc83d1fc5bcefa0e13604fbdc000492a27a689178dc2b1578a70361a0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.0/tetris-tui-0.2.0-x86_64-unknown-linux-gnu.zip"
    sha256 "71504b638e9ffa7ee57c3667491cf79d14daa7810d46d8218b059def4d9dc885"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.0/tetris-tui-0.2.0-aarch64-apple-darwin.zip"
    sha256 "a9c109aca6d1e968cabad997e0bf1944882eb89aba7bc9b737986fba5d81c0c4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quantonganh/tetris-tui/releases/download/v0.2.0/tetris-tui-0.2.0-x86_64-apple-darwin.zip"
    sha256 "1108410b5fe964b05571dcb02ae6663fa2b6b46a5dacc9c36ae87211829e52c4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tetris-tui" => "tetris-tui"
  end

  test do
    output = shell_output("#{bin}/tetris-tui --version")
    assert_match "0.2.0", output
  end
end
