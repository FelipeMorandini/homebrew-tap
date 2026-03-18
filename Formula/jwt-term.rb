class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "bd155bf450bb6306d492c120bf67e62248e132c4b678344a976d319d94745302"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "b9fd2e2a377d3c430c0728f0562e5c9a0ec550de0342dea129144e4f268a702e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8a1c43e2f0efcc45e295448a647a489e583c4cdc36bc3d8b7d078c88d6ea2ab"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6681ae76b50accaf341870b8cc5548ccee825d7c022b12b8006da114ce8c8b64"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
