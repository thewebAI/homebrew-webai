class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.21"
  url "https://github.com/thewebAI/webai-cli/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "0ce3f03bb1b2cfb7e02aa11f04ee0fc8c037645334035ddb1cd2553003616d2f"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "10a7f31a961dcf13165e99178ad719a77576595a64b0b7f74a2b005ba309489e"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "1c078c6a86e4b25f7e88b19cd23ff4309b4ba88e82cd53ec5bb98e79dd96f428"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
