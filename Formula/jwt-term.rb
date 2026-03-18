class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "942a2998af0255a861607b8cd87d8b58eda8b2ba0e3a9d5279ac826183db5ffb"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "c6e8c2d14424a4b6a021e3bbd0dd33bf1c03e988f7d8d692bed9c1a7327eacd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd63882924c9899e0c73344fa16236bb34568d482cd904ac2289083a835654c8"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.1/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d97e01804ff5dfd7a8a74839a15570211ad0c11f9f38541de6085ba86af23bfa"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
