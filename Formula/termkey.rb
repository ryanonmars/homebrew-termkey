# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.20"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.20/termkey-linux-x86_64.zip"
  sha256 "cd7abd724ceca6357228bc5175524d7a434f451265553327d59df35a82d6f91d"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.20/termkey-macos-x86_64.zip"
      sha256 "21e92ab26c5cb2e29a2d0d7f4a2460e6a7a761cc5eb87750f2defb13bd19c0ad"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.20/termkey-macos-aarch64.zip"
      sha256 "40ce5f6cba171853b5ffec80bc7326c81178ccaea05805b6cab343f435d9fdcd"
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
