class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.3/jwt-term-aarch64-apple-darwin.tar.gz"
      sha256 "efb9ef5ce24227338a9c7e1a9c60d12726f5ac1f4b60761b91ceac2094b0f43e"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.3/jwt-term-x86_64-apple-darwin.tar.gz"
      sha256 "2b4520ae77eb355cffe0a60c0cecae17ca6fda0b59fa114829ddfa779ec8ba72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.3/jwt-term-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96e7b6921c1c9c4b4672649dd1be1173b4ae5d0305eeb09db27f1ab9ed3c0770"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v1.1.3/jwt-term-x86_64-unknown-linux-musl.tar.gz"
      sha256 "57287d92d14fdadb2b0430727691138a715daee99eda134e55dd39dc37af6122"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
