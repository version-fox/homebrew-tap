# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vfox < Formula
  desc "A cross-platform SDK version manager with a simple cli."
  homepage "https://github.com/version-fox/vfox"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/version-fox/vfox/releases/download/v0.0.1/vfox_0.0.1_macos_aarch64.tar.gz"
      sha256 "a88d9d632476b6caa687a838e9ee3d879a9203638005d84d46baa3506a1da9d6"

      def install
        bin.install "vfox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/version-fox/vfox/releases/download/v0.0.1/vfox_0.0.1_macos_x86_64.tar.gz"
      sha256 "b15a193691cd7f412f3abf11b4040b78693dbc785848f018e388291b8fdc1427"

      def install
        bin.install "vfox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/version-fox/vfox/releases/download/v0.0.1/vfox_0.0.1_linux_aarch64.tar.gz"
      sha256 "38b92729ebca1d649891957fe933b61620ba770a34f3da98f70b32de0920c30a"

      def install
        bin.install "vfox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/version-fox/vfox/releases/download/v0.0.1/vfox_0.0.1_linux_x86_64.tar.gz"
      sha256 "168d7c936d607faea2c24531deb7737e0272628e9ccef1bbe88bfa15ecd670fe"

      def install
        bin.install "vfox"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/version-fox/vfox/releases/download/v0.0.1/vfox_0.0.1_linux_armv7.tar.gz"
      sha256 "70d500985e736a1f3bb8c5e4780343dc91100dd04f8a598805b0c1064b13f454"

      def install
        bin.install "vfox"
      end
    end
  end

  test do
    system "#{bin}/vfox version"
  end
end
