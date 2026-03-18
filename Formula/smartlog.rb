class Smartlog < Formula
  desc "A high-performance TUI for log tailing with JSON auto-detection and real-time filtering"
  homepage "https://github.com/felipemorandini/smartlog"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.1/smartlog-aarch64-apple-darwin.tar.gz"
      sha256 "7c2644e0b55deaa000f9f2eeef72b6a6b2fbdfd44917c78fd325871fadf9b92b"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.1/smartlog-x86_64-apple-darwin.tar.gz"
      sha256 "aae7d9ed68f752f78b7fa4e868396737944b1804924a322a0850313d6d43d8f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.1/smartlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92f7986f101d3ea92065dd7ee217993f98e23199965a262ffac68dfacd5315b5"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.1/smartlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2bc49e132b573840d600884ca009bb58249ba6a44cf5eebdebc001223d4fa2bd"
    end
  end

  def install
    bin.install "smartlog"
  end

  test do
    assert_match "smartlog", shell_output("#{bin}/smartlog --version")
  end
end
