class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.2/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "ce04f57742e467442602e8c4f0a3e9f75f3efcaddcc1e31ddce1f8892fc11d64"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.2/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "694d1c76260c2caf92bf80e6261bf61d1c46470c3a57537b7d3633f5caa853b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.2/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f57d4ec9541969669cf72b9669182779ab09d47486ecb6473bdd6a6bfb32906"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.2/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "231efd3a955fc13c14730e2f412d348cff509ed40a1013d13847059681c6355e"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
