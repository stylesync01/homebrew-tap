# typed: false
# frozen_string_literal: true

class Runagents < Formula
  desc "RunAgents CLI — deploy and manage AI agents from the terminal"
  homepage "https://runagents.io"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://runagents-releases.s3.amazonaws.com/cli/v1.0.0/runagents_darwin_amd64.tar.gz"
      sha256 "be749f5521cd5f737ac2a9fa484f904eb4fe774bde1fd0e28fdc3541be9f6fb1"
      def install
        bin.install "runagents"
      end
    end
    if Hardware::CPU.arm?
      url "https://runagents-releases.s3.amazonaws.com/cli/v1.0.0/runagents_darwin_arm64.tar.gz"
      sha256 "dd19840b4c0ab12556ba9069355fc563cc1c16afa4baff5685eef7a3c313b5f0"
      def install
        bin.install "runagents"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://runagents-releases.s3.amazonaws.com/cli/v1.0.0/runagents_linux_amd64.tar.gz"
      sha256 "729a5a11b840f08adc00ab50af973879f8cea4deb1d9083ac7a1d10a8fd5fa57"
      def install
        bin.install "runagents"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://runagents-releases.s3.amazonaws.com/cli/v1.0.0/runagents_linux_arm64.tar.gz"
      sha256 "1a89ebedecc0a80755afd1ee00a5e7e66bb57f0af158207025bcea039dc93053"
      def install
        bin.install "runagents"
      end
    end
  end

  test do
    system "#{bin}/runagents", "version"
  end
end
