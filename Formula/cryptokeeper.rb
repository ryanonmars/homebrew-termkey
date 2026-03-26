# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.2.8"
  license "MIT"

  url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.8/termkey-linux-x86_64.zip"
  sha256 "abbafd0ef1aeaae6e361b167396baf2f657c05a06c90c9843cbdc1e65340a950"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.8/termkey-macos-x86_64.zip"
      sha256 "475e0e9a08e39536173cc5edb6fc6d69dc2f974235ff14479c2567e08a231a4e"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.8/termkey-macos-aarch64.zip"
      sha256 "3445f47227debbd6cabf62029ecd5d2bca7053b1847c507d62c468a4450a779a"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
