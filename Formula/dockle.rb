# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dockle < Formula
  desc "Simple security auditing, helping build the Best Docker Images"
  homepage "https://github.com/goodwithtech/dockle"
  version "0.4.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goodwithtech/dockle/releases/download/v0.4.8/dockle_0.4.8_macOS-ARM64.tar.gz"
      sha256 "3083e06633519db97fc5a7fd508d6f41529ae80cdc87fe12c8df684ca08de5c2"

      def install
        bin.install "dockle"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goodwithtech/dockle/releases/download/v0.4.8/dockle_0.4.8_macOS-64bit.tar.gz"
      sha256 "a3f3e43d923990beeb67b43a969a1c99db3971488fa1d3774fdea09f6ed11a9c"

      def install
        bin.install "dockle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goodwithtech/dockle/releases/download/v0.4.8/dockle_0.4.8_Linux-ARM64.tar.gz"
      sha256 "ffa6427829f79373c49863f57f87e2db97676f1d51d828f1cb8086435ee0a684"

      def install
        bin.install "dockle"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goodwithtech/dockle/releases/download/v0.4.8/dockle_0.4.8_Linux-64bit.tar.gz"
      sha256 "9a94651a76dfccbe71c56252a7dd3182e9306ab6eacb64be462cadf42be56fac"

      def install
        bin.install "dockle"
      end
    end
  end

  test do
    system "#{bin}/program --version"
  end
end
