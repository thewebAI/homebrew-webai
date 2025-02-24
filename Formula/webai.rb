class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v0.1.12/webai"
      sha256 "a05b631b50f6442827c9f58cd06b3304640e7daec2d72f30d7186172b8872b1f  webai-darwin-arm64"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v0.1.12/webai"
      sha256 "2cf3de7809c20ddbe58033545ab331ca11f1663464e0f73ea19d9bcd9b22d87f  webai-darwin-x64"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v0.1.12/webai"
    sha256 "6a90e6d3397d9169b35dac35ca5068fe446802bd0ac5e67935141ec15b3a9519  webai-linux"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
