# typed: false
# frozen_string_literal: true

class Bharatcode < Formula
  desc "BharatCode — an open, sovereign terminal AI coding agent"
  homepage "https://github.com/arbazkhan971/bharatcode-cli"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.3/bharatcode_Darwin_x86_64.tar.gz"
      sha256 "8a2a2cb6b39e7a0d6ed517b774cd57b99066f262841c69b33056400b7b7ee45e"
      def install
        bin.install "bharatcode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.3/bharatcode_Darwin_arm64.tar.gz"
      sha256 "33fc2cd0e78003d1a0a18c08551d4d85fc7e417608840be79d9b7fc7a8fd1a62"
      def install
        bin.install "bharatcode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.3/bharatcode_Linux_x86_64.tar.gz"
      sha256 "ee5e2df24bb07f3c4396cd2c2a340719af9155af9f2f1aa4050636678c4f6cea"
      def install
        bin.install "bharatcode"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.3/bharatcode_Linux_arm64.tar.gz"
      sha256 "bbf1b19fc5320fb20be5bf643d2af9d5f278bd37ce734aa21434cb281dea744e"
      def install
        bin.install "bharatcode"
      end
    end
  end

  test do
    system "#{bin}/bharatcode", "--version"
  end
end
