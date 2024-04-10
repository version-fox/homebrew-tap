# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vfox < Formula
  desc "A cross-platform SDK version manager with a simple cli."
  homepage "https://github.com/version-fox/vfox"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.2/vfox_0.3.2_macos_x86_64.tar.gz"
      sha256 "c4e70ed94406e5d02290d09992b7fe859d8a0ab55112e8709c61c03f3ec0f689"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.2/vfox_0.3.2_macos_aarch64.tar.gz"
      sha256 "f005d1150514a36b027850c9978bd9cec5ed1d28a66396e406a100ce8322b784"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.2/vfox_0.3.2_linux_x86_64.tar.gz"
      sha256 "7d838183d3a6e9976b28fa724aa216cea21d52f199c6c74d846fae5519027c41"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.2/vfox_0.3.2_linux_armv7.tar.gz"
      sha256 "612e72f3546728531f9cac8e019afd91431a779099d074298e52c6d88fa87362"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/version-fox/vfox/releases/download/v0.3.2/vfox_0.3.2_linux_aarch64.tar.gz"
      sha256 "140b130cb4ee309b19a838254cd653d98daedbf2527ff8069ebb68be3c8a3e6d"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
  end

  test do
    system "#{bin}/vfox version"
  end
end
