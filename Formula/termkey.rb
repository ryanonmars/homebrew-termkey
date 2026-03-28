# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.16"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.16/termkey-linux-x86_64.zip"
  sha256 "d5e0bc4cba946012a32fd0d7e17cef190977dab5c024e58e31bc274493f2502f"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.16/termkey-macos-x86_64.zip"
      sha256 "cda481f282a52d1f2c621c007ad1357ccbb41cd975a17bd221125ed48ed90c2d"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.16/termkey-macos-aarch64.zip"
      sha256 "139ca7dbe8ab3085859e24cf6cd7c729c8a69801c4e8d22cc6ec89fa97f6dff5"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
