class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.5/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "bad35a3c93c58c3f82189c352c4101ce9322118c9f6ba2b3a4ce21178db6aaab"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.5/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "faa325e829b8248ceade8c00a577e1168648666ffa91600fb2a0f8f54c5fa781"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.5/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b466a20e1b5f532e785c24f3bb764a576d261cc0266187f1fa29a1bfd571222f"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.5/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f969004010c12a863ecb610e1cff8c47dc5e332c9aeb562dc8ca3b76d05ad0d4"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
