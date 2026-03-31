# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  version "0.2.17"
  license "MIT"

  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.17/termkey-linux-x86_64.zip"
  sha256 "5cf61020e880f790c9cce924585118e84871603bd01788953a198afa9d38407f"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.17/termkey-macos-x86_64.zip"
      sha256 "f3182d5db2ea58783531883091a64f087fd002c4dd04f12643e888a1df523549"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.17/termkey-macos-aarch64.zip"
      sha256 "ba8e732e515b42bf405b250c34a97b61de279617d2bfa21a2e92970596e69fbf"
    end
  end

  def install
    bin.install "termkey"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
