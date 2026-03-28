# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.15"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.15/termkey-linux-x86_64.zip"
  sha256 "41f8d37fe03b60c969adb9eb143b364d6a158ad5bebae3ed413954f52aeaa721"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.15/termkey-macos-x86_64.zip"
      sha256 "bd88fa38c91bc26dc83203b161cf7e28f2462e4489c9bf32fdaa02d13c93d2f0"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.15/termkey-macos-aarch64.zip"
      sha256 "2835ffb2b8193c517370f4cc48a13215c01b6164a767d4f39b26b4fc22f54f8b"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
