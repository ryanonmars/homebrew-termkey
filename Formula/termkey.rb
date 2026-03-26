# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.12"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.12/termkey-linux-x86_64.zip"
  sha256 "0f07b5c1e9ac6ee2633cbffb5361f78163977cc10cc6a31823a507baa1a8345f"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.12/termkey-macos-x86_64.zip"
      sha256 "ef464217c39b8b7f5ccdbe50fc442ad7fd9d793e493fb6c4129ffbef9c35334d"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.12/termkey-macos-aarch64.zip"
      sha256 "7c3e5da793f9080b114a9c1255f4479ce7c57b0449fe12c1e393e2a334ceec92"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
