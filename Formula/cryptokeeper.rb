# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.2.6"
  license "MIT"

  url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.6/cryptokeeper-linux-x86_64.zip"
  sha256 "fa257d634af0dd109233867c2bb065b0d245219dd0eda0e225a3447c53ca527c"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.6/cryptokeeper-macos-x86_64.zip"
      sha256 "f29ce57b37092c5354595e230b1edbb311556e3762287b651565596fbfc8668c"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.6/cryptokeeper-macos-aarch64.zip"
      sha256 "4c43a90b12977498e64cb8ab3945a4f958f8e692f2bf6ca7ff27749730cd58c4"
    end
  end

  def install
    bin.install "cryptokeeper"
  end

  test do
    assert_match "Encrypted storage for cryptocurrency", shell_output("#{bin}/cryptokeeper --help")
  end
end
