# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.26"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.26/termkey-linux-x86_64.zip"
  sha256 "0fe75752884cf2c2b6359094402ead56daa3281f11443ff383aa9140d8df66b8"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.26/termkey-macos-x86_64.zip"
      sha256 "afabec3437fd92ed6110c40be9afa2a41124914ff53aef48609ff6a71083af95"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.26/termkey-macos-aarch64.zip"
      sha256 "df9455e48bbe872e438594b71da7937bf8155d76de5f2da5e9079fe424c1de49"
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
