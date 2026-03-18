class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "ecdd3c1f602604509834e03d97ea286de094393e332fafd6011c9c49f74718a9"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "7431102f8c2fea2611fc1d5d068177ee7eaea51397505abbf1e2eee2f6b4db95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53bdaca099e2e28108de19d46098d2bc5acb65e1f046ac0b3537681f5bc703f3"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c64d9bf71bfcf05d8c81423aa76f3b7f2970185cd4dfe28ade87e5d7cff671f8"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
