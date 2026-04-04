# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.22"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.22/termkey-linux-x86_64.zip"
  sha256 "d27be13dfd8f3a1cefff31aef2a972f720d2c3ea7540414245254c6f090d19e2"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.22/termkey-macos-x86_64.zip"
      sha256 "bccf814407013c3caee0887569414ffcc51f97aa1beea2f13368daa9336001dc"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.22/termkey-macos-aarch64.zip"
      sha256 "86a45ed2017c0c8598b2c8aee64d51f70e7457954945267ee0754774c06128bc"
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
