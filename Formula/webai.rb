class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli-public"
  version "0.1.39"
  url "https://github.com/thewebAI/webai-cli-public/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"
  

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "5ec9578b5ae2189adb0b350d5a9dfdb65e49ed645cae34f5d6b1c01152ce6311"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-x64"
      sha256 "773043e1f1dc2c4a8680eaaa8769d6c70ee29195576a141fafab1550824fbce5"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-linux"
    sha256 "f8f2787afbc497972b5c341a2a47cf725b2712736630409a37db671bc63be807"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
