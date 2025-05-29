class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli-public"
  version "0.1.40"
  url "https://github.com/thewebAI/webai-cli-public/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"
  

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "7fe927fd9fa5f8fa9391ff3d59b35fe7b44730214adf8822fb39a02a204b805c"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-x64"
      sha256 "e0f266cd1ba73098c8c672ce9f59f08a8037ee6f144ecf40b051db49b64d2008"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-linux"
    sha256 "465d75e29f947d958f3cf21da45b390a0213912144ecba7248d868b874931d31"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
