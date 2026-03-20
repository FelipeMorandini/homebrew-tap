class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.4/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "602dc2f8ef530d6be90d3fb208b11a8c7ebebb26ac423454b8645394d68643bb"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.4/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "89f112135e078fcba49afb4358435d1f6b628c70acb8299b08eda031a15885be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.4/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53b0cee4df90f89efdf356dbee4c044c8ae8a0d781c79c86fbefd409c2f904a8"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.4/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "016dde36fb480d8333d2355efc3881e3597249f0edb530cd41a6b57b75a42da9"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
