# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vfox < Formula
  desc "A cross-platform SDK version manager with a simple cli."
  homepage "https://github.com/version-fox/vfox"
  version "0.6.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/version-fox/vfox/releases/download/v0.6.6/vfox_0.6.6_macos_x86_64.tar.gz"
      sha256 "691430c95d92b3788211fed054bf5344bc3fa0358d8172c0347943191c489546"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    on_arm do
      url "https://github.com/version-fox/vfox/releases/download/v0.6.6/vfox_0.6.6_macos_aarch64.tar.gz"
      sha256 "71bab527ddd24440529732a5875e5e1d45017168423122d0e519c3f185259078"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/version-fox/vfox/releases/download/v0.6.6/vfox_0.6.6_linux_x86_64.tar.gz"
        sha256 "da58add0e77cd3a2ee9b3f7115df1867a371ae2e2ad53fa90eb33fd936237601"

        def install
          bin.install "vfox"
          bash_completion.install "completions/bash_autocomplete" => "vfox"
          zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/version-fox/vfox/releases/download/v0.6.6/vfox_0.6.6_linux_armv7.tar.gz"
        sha256 "c4ed8dbf4d1d6c03a5edfe12336d4a96cad54c908e23d7c1f7b3c03c92c5b5a8"

        def install
          bin.install "vfox"
          bash_completion.install "completions/bash_autocomplete" => "vfox"
          zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/version-fox/vfox/releases/download/v0.6.6/vfox_0.6.6_linux_aarch64.tar.gz"
        sha256 "69b126e4a50d7597f0860b05aee3510cd35ddc7f110961261d2b2b5050328ded"

        def install
          bin.install "vfox"
          bash_completion.install "completions/bash_autocomplete" => "vfox"
          zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
        end
      end
    end
  end

  test do
    system "#{bin}/vfox version"
  end
end
