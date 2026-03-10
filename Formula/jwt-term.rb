class JwtTerm < Formula
  desc "A secure, offline-first CLI for inspecting, validating, and manipulating JWTs"
  homepage "https://github.com/felipemorandini/jwt-term"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v#{version}/jwt-term-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e375008ea128b336497643e89a391ebf51248b48593fde246bbc666bbf7dae4d"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v#{version}/jwt-term-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3bc60bac0b0f6687e11e7d1004b295977f332669cfc5dfb7861fbe6433fed91c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/felipemorandini/jwt-term/releases/download/v#{version}/jwt-term-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42da7a882262d5fc249e958772a04ed87c21c1c180ccf33a9660910fa55fa5c9"
    else
      url "https://github.com/felipemorandini/jwt-term/releases/download/v#{version}/jwt-term-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63b680c107a01eb43bbbfa32b6f52090c9f9dd4ab157fa1e2e09a11ea2280213"
    end
  end

  def install
    bin.install "jwt-term"
  end

  test do
    assert_match "jwt-term", shell_output("#{bin}/jwt-term --version")
  end
end
