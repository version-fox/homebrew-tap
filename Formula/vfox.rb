# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vfox < Formula
  desc "A cross-platform SDK version manager with a simple cli."
  homepage "https://github.com/version-fox/vfox"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/version-fox/vfox/releases/download/v0.5.4/vfox_0.5.4_macos_x86_64.tar.gz"
      sha256 "9c57d3122f5a3acfde3f89c3dbad4662af3e9dd6347edd1ed2e761091dcee172"

      def install
        bin.install "vfox"
        bash_completion.install "completions/bash_autocomplete" => "vfox"
        zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
      end
    end
    on_arm do
      url "https://github.com/version-fox/vfox/releases/download/v0.5.4/vfox_0.5.4_macos_aarch64.tar.gz"
      sha256 "f3942b45f828c5e9a5f0485d21c6f6a0f23b495e88707377df14019962e95368"

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
        url "https://github.com/version-fox/vfox/releases/download/v0.5.4/vfox_0.5.4_linux_x86_64.tar.gz"
        sha256 "ed21dc28cc75aff7999e2b1ba5095747cd8e67855c93a739768bcc0c65331d09"

        def install
          bin.install "vfox"
          bash_completion.install "completions/bash_autocomplete" => "vfox"
          zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/version-fox/vfox/releases/download/v0.5.4/vfox_0.5.4_linux_armv7.tar.gz"
        sha256 "6be5a0cc7c2e0a980a733f083f02f256a65ce1031e9de5a702b4d69bc0f2e1e5"

        def install
          bin.install "vfox"
          bash_completion.install "completions/bash_autocomplete" => "vfox"
          zsh_completion.install "completions/zsh_autocomplete" => "_vfox"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/version-fox/vfox/releases/download/v0.5.4/vfox_0.5.4_linux_aarch64.tar.gz"
        sha256 "ef77bbbb4e97562abe394b2d4c07309087e94ac5c6ebb3263b91214f05216b41"

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
