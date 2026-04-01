# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.18"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.18/termkey-linux-x86_64.zip"
  sha256 "7c3276fa1a3e29cd92b8e606f796383f261f9d434a0b3e1918c94369e5c65ba8"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.18/termkey-macos-x86_64.zip"
      sha256 "db5af754a4d855b346c7ba28f8b39dc69ed747dca1bfd8759d645932c1def919"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.18/termkey-macos-aarch64.zip"
      sha256 "0c8ea77236bc36c7774ad54941ac3840f31e36c9f02e7ff50575c80f2c486525"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
