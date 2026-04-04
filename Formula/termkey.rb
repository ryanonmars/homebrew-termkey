# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.24"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.24/termkey-linux-x86_64.zip"
  sha256 "0c02d500421c9de0f94ea92b1be89daa2f50694d6e0b0e91de8abaf1aba82045"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.24/termkey-macos-x86_64.zip"
      sha256 "0f26d6a4aa0b8a04402079e6892be2ec68cf390a7e4e5d09b0ed830352c05330"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.24/termkey-macos-aarch64.zip"
      sha256 "f4ac1482008621a546660aed44d6ad9927f79d5a08f5dcee143c5e6feffa2797"
    end
  end

  def install
    bin.install "termkey"
    libexec.install "termkey-native-host"
    pkgshare.install "browser-extension"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
