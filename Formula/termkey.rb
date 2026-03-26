# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.10"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.10/termkey-linux-x86_64.zip"
  sha256 "0b4d00d1d300dcb9d83adf62751ab7790159c516ae69c33aa35552a1f82dc19c"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.10/termkey-macos-x86_64.zip"
      sha256 "feba930ca37adf312b27e6a45c979440d4f68dd1d6bec05afc9e765467dff4aa"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.10/termkey-macos-aarch64.zip"
      sha256 "4283e52b1c706741d0f288f269cf4fa9a8d044884fb015fd308edb25e6c0365f"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
