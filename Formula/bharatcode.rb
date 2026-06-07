# typed: false
# frozen_string_literal: true
# This file is generated for the BharatCode release; do not edit by hand.
class Bharatcode < Formula
  desc "BharatCode — an open, sovereign terminal coding agent"
  homepage "https://github.com/arbazkhan971/bharatcode"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.1/bharatcode_Darwin_arm64.tar.gz"
      sha256 "ed742a1caffdf2e7e87f47db6f2a762bfad73546be29f04b14d122cfd9d7155d"
    end
    on_intel do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.1/bharatcode_Darwin_x86_64.tar.gz"
      sha256 "1fff67b1c77ccb45a531c80a0a3f3e09d3cb2c6afe592e288b133054d1fe3c21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.1/bharatcode_Linux_arm64.tar.gz"
      sha256 "872dfeb8cdc6a83333bba2ec991bd5aa8d3dc5b16644489b04e2d9d9cd3e5680"
    end
    on_intel do
      url "https://github.com/arbazkhan971/bharatcode/releases/download/v0.2.1/bharatcode_Linux_x86_64.tar.gz"
      sha256 "36462aa23d3058af24f1b0eef5f3e0e8ce9df02c9c19fc33480c713418c70b0d"
    end
  end

  def install
    bin.install "bharatcode"
  end

  test do
    system "#{bin}/bharatcode", "version"
  end
end
