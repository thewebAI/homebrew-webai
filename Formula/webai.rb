class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.23"
  url "https://github.com/thewebAI/webai-cli/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "9bc3c48b986ad67a1d80c1fce209fa54b166cbd1feeaf2454947199ccec78472"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "7d00e36b52560f097da104f97c6167ea7e5ee485139864a42f7ca039f788d461"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "4a526f8edc754c4858d86a605d508c621ec8fe910b7269d91f766550f09b4d64"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
