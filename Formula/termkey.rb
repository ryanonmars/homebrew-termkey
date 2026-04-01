# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.19"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.19/termkey-linux-x86_64.zip"
  sha256 "cfaf327b2039e55f412b774abe114db71d83d6b86f8f9561319a5ac70cef3b85"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.19/termkey-macos-x86_64.zip"
      sha256 "a732a94a30d51ca20f8bc9f6fec35281dacf474e95aa71efc89c21b7510f2a86"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.19/termkey-macos-aarch64.zip"
      sha256 "3cf3119fa57b29f31c504f6a91e1345d9b8cba03dc62fee27dcbdc9a2fb3e0b6"
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
