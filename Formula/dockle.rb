# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dockle < Formula
  desc "Simple security auditing, helping build the Best Docker Images"
  homepage "https://github.com/goodwithtech/dockle"
  version "0.3.12"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.12/dockle_0.3.12_macOS-64bit.tar.gz"
    sha256 "3c8027ad73a67d5c4d2cc6a21b8d5f9df302be712a5a89516d27c6bb5cc77a10"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.12/dockle_0.3.12_Linux-64bit.tar.gz"
    sha256 "db592faf9833360c8cf609671a08c36887ef80ec8497cbbd472d69d1c71f17f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.12/dockle_0.3.12_Linux-ARM64.tar.gz"
    sha256 "dc0500f38a88306b4bc30aef15505c04842747eb96ef6fcf6469ea9fd6777518"
  end

  def install
    bin.install "dockle"
  end

  test do
    system "#{bin}/program --version"
  end
end
