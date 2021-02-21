# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dockle < Formula
  desc "Simple security auditing, helping build the Best Docker Images"
  homepage "https://github.com/goodwithtech/dockle"
  version "0.3.4"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.4/dockle_0.3.4_macOS-64bit.tar.gz"
    sha256 "820b4e28d4d9f44ee8ed02defa6a2b37e013a23b3c343f2d969e15e5943701eb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.4/dockle_0.3.4_Linux-64bit.tar.gz"
    sha256 "2dbf58c743421784f6eaa8b6ed87f9fbbea9200804bb3bb80757fe2eda32b194"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/goodwithtech/dockle/releases/download/v0.3.4/dockle_0.3.4_Linux-ARM64.tar.gz"
    sha256 "fa10cae453a05d207ca71276436950a6b4336cb62dc741d2c521479bd7537f4e"
  end

  def install
    bin.install "dockle"
  end

  test do
    system "#{bin}/program --version"
  end
end
