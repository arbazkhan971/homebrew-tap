# typed: false
# frozen_string_literal: true

class Bharatcode < Formula
  desc "BharatCode — an open, sovereign terminal AI coding agent"
  homepage "https://github.com/arbazkhan971/bharatcode-cli"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.2/bharatcode_Darwin_x86_64.tar.gz"
      sha256 "68f9fb5273afc36ad7eca43921701703a0eeea4352fa393181749f4f95832747"

      def install
        bin.install "bharatcode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.2/bharatcode_Darwin_arm64.tar.gz"
      sha256 "c8a02fd1c37021af119fb4447dfc4dc09cf2b9fcf763f38fc5e705956dfa0291"

      def install
        bin.install "bharatcode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.2/bharatcode_Linux_x86_64.tar.gz"
      sha256 "135580f1fb0feef02b0824fb178bd59ff59642a277ea50c4fecd08e48fda024b"

      def install
        bin.install "bharatcode"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arbazkhan971/bharatcode-cli/releases/download/v1.0.2/bharatcode_Linux_arm64.tar.gz"
      sha256 "5b3e99a322d5cdabcf099f31fd94fc01074be670d379e918deaa18586a96b193"

      def install
        bin.install "bharatcode"
      end
    end
  end

  test do
    system "#{bin}/bharatcode", "--version"
  end
end
