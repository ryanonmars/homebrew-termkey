# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.13"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.13/termkey-linux-x86_64.zip"
  sha256 "515a71b934e1f68ae60cd7d18cb71d664deee39712eefb07559d5a56323b2caf"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.13/termkey-macos-x86_64.zip"
      sha256 "79ddd3f3ea88179c182487966385dd53e74c88eddeb81780876b55b724e5cba4"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.13/termkey-macos-aarch64.zip"
      sha256 "fb1c018e879cfd0e1a69771ff6a582b9ab5607cd5c801685f8435266bf600904"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
