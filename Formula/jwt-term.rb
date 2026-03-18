class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "4902d069a3e77b61b86280641a9f6fcd15b385ad52bda27293d688f2329da3a1"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "7f33eec252a8f480c75f498f9a56f6c0149b5241f55321cb12dc15ca27095197"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a90551a62043e92251b5a64f14e0a0c607ca1f1b96859785f204b1754d6fc2d1"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.0/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "947a3b26b6885f855600300097b28c46d9991736b5a2799b430d07f1b329c941"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
