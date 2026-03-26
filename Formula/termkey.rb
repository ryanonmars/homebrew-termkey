# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.11"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.11/termkey-linux-x86_64.zip"
  sha256 "765949521dc5dba6528b34e2fbc31ab1a040f12089ab4746c2f84b14aeee5ddc"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.11/termkey-macos-x86_64.zip"
      sha256 "46770bfed9cb9892519e189e4920f0dc732b9cd0565087761b62b17a8ce3ae67"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.11/termkey-macos-aarch64.zip"
      sha256 "cfbc3ae06d3f414652863df2e7ed8bc9d9b87c12980fb2829f73941b0e9c0bd8"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
