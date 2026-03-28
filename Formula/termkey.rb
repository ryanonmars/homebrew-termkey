# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.14"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.14/termkey-linux-x86_64.zip"
  sha256 "7667b104577df580cc1b0b43e9a6f9e1f631bce830d9bc28ba4cab743765cb2d"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.14/termkey-macos-x86_64.zip"
      sha256 "4e931dc63cedb6ef19f6704a85c66b4ddd138ebcabdbc920a2dae2aab8429161"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.14/termkey-macos-aarch64.zip"
      sha256 "b6e1c2b26f17f3aef645b3ae3f15f518655f7935918cbf7593b8270481a5a541"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
