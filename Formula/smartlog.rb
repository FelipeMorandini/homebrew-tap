class Smartlog < Formula
  desc "A high-performance TUI for log tailing with JSON auto-detection and real-time filtering"
  homepage "https://github.com/felipemorandini/smartlog"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.3/smartlog-aarch64-apple-darwin.tar.gz"
      sha256 "cbd5f603f48e37f45c6bef7882d337f3b305ed0c4348498d4613a2c6e1a86d2e"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.3/smartlog-x86_64-apple-darwin.tar.gz"
      sha256 "307f57032f87ffa5bf6f646f0accee8b57e413188f042a2096804a0a279878f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.3/smartlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7acfc17a82eb4f5903cef69ef891c3b62267575d75a7a920d3f5f1a5dd25fdc1"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.3/smartlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e4908d9f50c922864a7ddcb103b60a67795863652d53874f1e31fb720703056"
    end
  end

  def install
    bin.install "smartlog"
  end

  test do
    assert_match "smartlog", shell_output("#{bin}/smartlog --version")
  end
end
