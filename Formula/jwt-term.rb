class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.0.1/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "d24dab7e861249aa20a1e7a800bfa83525f52e5293f0420767fa1caf8acbb698"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.0.1/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "e5d03d11ad6b1a8518819c64111afeb9266436ce691812e7333f3d0c3fa52ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.0.1/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "884bee4ec4df3fe210441968cbadbfe55d7313518308ad3ab1a2c3dc4d06c9ce"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.0.1/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "129e738e06a45d669a0f2db1a197b8095234cb0aa9844d6457e2c655ab91381e"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
