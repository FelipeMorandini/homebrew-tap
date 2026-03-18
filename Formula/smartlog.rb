class Smartlog < Formula
  desc "A high-performance TUI for log tailing with JSON auto-detection and real-time filtering"
  homepage "https://github.com/felipemorandini/smartlog"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-aarch64-apple-darwin.tar.gz"
      sha256 "7975a675d31c0f9ae8a3ddf2dcb196f8131c5e78309d7b7e2eeeee08ef0c40f2"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-x86_64-apple-darwin.tar.gz"
      sha256 "c9a5e90cc9897b01d266858451e0ba67d795e776b61e47615fcf0c8e53f20578"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc017928fcca929f7e398d67098b8629c0c58478b43ce8010d303ee3aaddee43"
    else
      url "https://github.com/felipemorandini/smartlog/releases/download/v0.6.0/smartlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9eecf0a8b5a653f9caf723baa7116db21b66314bbc30e93798d1322a8559498f"
    end
  end

  def install
    bin.install "smartlog"
  end

  test do
    assert_match "smartlog", shell_output("#{bin}/smartlog --version")
  end
end
