class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli-public"
  version "0.1.44"
  url "https://github.com/thewebAI/webai-cli-public/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"
  

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "01cd81519f16f3fb1c7705adbfe85ecb5640ed72b7eb8d1101245fd30edfba3b"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-x64"
      sha256 "6f6e7bd49f23f50f2cf5a92b9cb6168d3b0cf29c93c3a9bd93123c687c401516"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-linux"
    sha256 "689f6289f4bc354bfa6e940cb7da7aaeece4ea20fe6c75af4981967bb82400cf"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
