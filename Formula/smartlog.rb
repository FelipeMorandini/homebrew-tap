class Smartlog < Formula
  desc "A high-performance TUI for log tailing with JSON auto-detection and real-time filtering"
  homepage "https://github.com/felipemorandini/smartlog"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-aarch64-apple-darwin.tar.gz"
      sha256 "c158ec963ea96cc1a22dce75bae133a499ba1bee7d29345db24f9c87c7245cb2"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-x86_64-apple-darwin.tar.gz"
      sha256 "d64f7fdaac51b59bd04d235ccaa0024b6fbb680ed214a1a37a77a46ca7d8780a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e764831ce192deac25d4f5272720036bb895faf8bad0f3d2925495851f750e4f"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02d31e9244d38e59e73f055c86c0e33aefd4bd6557e90a8142c98ab4f361a920"
    end
  end

  def install
    bin.install "smartlog"
  end

  test do
    assert_match "smartlog", shell_output("#{bin}/smartlog --version")
  end
end
