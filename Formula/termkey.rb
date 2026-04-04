# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.21"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.21/termkey-linux-x86_64.zip"
  sha256 "b8de9d23a1f9514a7e59e01361b7ec30a2a8a58f08a6b9425f957b5a990698dc"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.21/termkey-macos-x86_64.zip"
      sha256 "5007324506c2b2ed509e73f8d066d6d628b26fa60d8464f6368a5a7abb568bc7"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.21/termkey-macos-aarch64.zip"
      sha256 "d38a28ae9f6bba58d5cff35614a7d7c3494de1b07453cbfa15783d34aaaa5f4e"
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
