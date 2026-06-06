# typed: false
# frozen_string_literal: true
# This file is generated for the BharatCode release; do not edit by hand.
class Bharatcode < Formula
  desc "BharatCode — an open, sovereign terminal coding agent"
  homepage "https://github.com/arbazkhan971/bharatcode"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.0/bharatcode_Darwin_arm64.tar.gz"
      sha256 "0a7d6701a31511307db6efb09a3bcf0af621525ecdcddc76a4b7b4c6bfe34655"
    end
    on_intel do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.0/bharatcode_Darwin_x86_64.tar.gz"
      sha256 "7e174afdf648f4dd4925006191a20c80548a976182950d672d3b7000dc1787ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.0/bharatcode_Linux_arm64.tar.gz"
      sha256 "a268ae4b7b41a031bbb669a2dd7d1e9d950df5da11482d00f45ac0af2f0a64f5"
    end
    on_intel do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.0/bharatcode_Linux_x86_64.tar.gz"
      sha256 "4eb969edff83557b5c9a8d507bda48e9db21e0f0504e9a1dd6c9d2080e40ac59"
    end
  end

  def install
    bin.install "bharatcode"
  end

  test do
    system "#{bin}/bharatcode", "version"
  end
end
