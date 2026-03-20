class Smartlog < Formula
  desc "A high-performance TUI for log tailing with JSON auto-detection and real-time filtering"
  homepage "https://github.com/felipemorandini/smartlog"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.4/smartlog-aarch64-apple-darwin.tar.gz"
      sha256 "be6859440d1dad83a6ef494d1d53d63b105be7e4586f02c1eaa3e780ae0a0866"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.4/smartlog-x86_64-apple-darwin.tar.gz"
      sha256 "f8c54d336515c085c1cc6126dc09205cdd334baab7cacc8959ee198287e8d888"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.4/smartlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09205304d62a3c3465255eb0552201a4c411656e32fb92ceb886773a52a51fb3"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.4/smartlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68a0b43f53f1ef85f5bbfbef7d103f0db559a39d7f4c8f9a31fc4f3b21e29a82"
    end
  end

  def install
    bin.install "smartlog"
  end

  test do
    assert_match "smartlog", shell_output("#{bin}/smartlog --version")
  end
end
