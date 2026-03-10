class Smartlog < Formula
  desc "A high-performance TUI for log tailing with JSON auto-detection and real-time filtering"
  homepage "https://github.com/felipemorandini/smartlog"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v#{version}/smartlog-aarch64-apple-darwin.tar.gz"
      sha256 "f66ae6ad7a24337b5a53e752c23aa370270959eeed1d12085dd4e584f7b2d6aa"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v#{version}/smartlog-x86_64-apple-darwin.tar.gz"
      sha256 "2fdd73defd08a0040412cbbcc5cd080e1836b5d29088ff61c825cb3a2cfa6819"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v#{version}/smartlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d7a8d50d757ee53be91547bf553fa6ab76c0dc23e241e35ab62d09f2c0eddd1"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v#{version}/smartlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f29367a4a331ac3a12bab0bf065d992bf896d6efe036581e33e1d0d498a6c22"
    end
  end

  def install
    bin.install "smartlog"
  end

  test do
    assert_match "smartlog", shell_output("#{bin}/smartlog --version")
  end
end
