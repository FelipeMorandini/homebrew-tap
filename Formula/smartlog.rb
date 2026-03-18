class Smartlog < Formula
  desc "A high-performance TUI for log tailing with JSON auto-detection and real-time filtering"
  homepage "https://github.com/felipemorandini/smartlog"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.2/smartlog-aarch64-apple-darwin.tar.gz"
      sha256 "25a2267e97c72516f78dfcd57a5b175045a6c5b92cb47be7673da6fe76a0084d"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.2/smartlog-x86_64-apple-darwin.tar.gz"
      sha256 "2c6294d8d55f8966a0bf7d2c71dec61a35197a31871b2562403089e87b8750ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.2/smartlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bde10fa2cc554b2761e68ff25faab4a26fa4a9c6ae95c318fedc84f24c0b81d"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.2/smartlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "42c22c52b2c1d012470be39cb8ab9060a08f288052855443317f7eb5c40c5201"
    end
  end

  def install
    bin.install "smartlog"
  end

  test do
    assert_match "smartlog", shell_output("#{bin}/smartlog --version")
  end
end
