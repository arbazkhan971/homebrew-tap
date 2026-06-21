# typed: false
# frozen_string_literal: true

class Bharatcode < Formula
  desc "BharatCode — an open, sovereign terminal AI coding agent"
  homepage "https://github.com/arbazkhan971/bharatcode-cli"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.1/bharatcode_Darwin_x86_64.tar.gz"
      sha256 "7a065fceb95c4089cb23e28e2b8502ac9594ab1cc68af4644d1da0c3e1bd26ba"

      def install
        bin.install "bharatcode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.1/bharatcode_Darwin_arm64.tar.gz"
      sha256 "e1cd43ac917d4a91095982435faf62d5b7e4ed53d99d5c2028ee68993991b957"

      def install
        bin.install "bharatcode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.1/bharatcode_Linux_x86_64.tar.gz"
      sha256 "628abc1d618c8499d2fbf35d78d5cffdbfb81036055d84fc15614168ff1af1db"

      def install
        bin.install "bharatcode"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.1/bharatcode_Linux_arm64.tar.gz"
      sha256 "0579dc96b030674dbc9da0470ee05a949b0e964f782143461ff3cb86219c94e9"

      def install
        bin.install "bharatcode"
      end
    end
  end

  test do
    system "#{bin}/bharatcode", "--version"
  end
end
