# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.25"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.25/termkey-linux-x86_64.zip"
  sha256 "b0cd80a268653b0c751fcf6dfcdfba24c4cd97cb65990f0422a3d826a4e4eba5"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.25/termkey-macos-x86_64.zip"
      sha256 "0bad9113581a99aa4c21633ec290047ad2cb2aacd2cade6a7a368a5f7659403e"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.25/termkey-macos-aarch64.zip"
      sha256 "5b2be776b15bf8b654c2766ef4e8ecf545f6e701383de1ecfcae497c6b094eb1"
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
