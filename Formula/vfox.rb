# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vfox < Formula
  desc "A cross-platform SDK version manager with a simple cli."
  homepage "https://github.com/version-fox/vfox"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/version-fox/vfox/releases/download/v0.5.5/vfox_0.5.5_macos_x86_64.tar.gz"
      sha256 "269701f9bdf2d4af033bf7e0125b21b8d34398816f52a301e8f457819f88449f"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    on_arm do
      url "https://github.com/version-fox/vfox/releases/download/v0.5.5/vfox_0.5.5_macos_aarch64.tar.gz"
      sha256 "8453eedd2ab4698f564e2a73b10c4b7edaa5b2416b066c636badeadcd1d3add9"

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
        url "https://github.com/version-fox/vfox/releases/download/v0.5.5/vfox_0.5.5_linux_x86_64.tar.gz"
        sha256 "81912d4433e68011527765546e29047bc19b54ba1f0ad6ab19f9fc679952ce3f"

        def install
          bin.install "vfox"
          bash_completion.install "completions/bash_autocomplete" => "vfox"
          zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/version-fox/vfox/releases/download/v0.5.5/vfox_0.5.5_linux_armv7.tar.gz"
        sha256 "202af51ab6ed268f4c3fc5d03339acdaadf2621e6f03dcdc45c9419bdc0edd4d"

        def install
          bin.install "vfox"
          bash_completion.install "completions/bash_autocomplete" => "vfox"
          zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/version-fox/vfox/releases/download/v0.5.5/vfox_0.5.5_linux_aarch64.tar.gz"
        sha256 "ac5def018ea7ab4ae4778bb6bdb2fdf7354911ba9bef7d3d5c0e50934892ecb1"

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
