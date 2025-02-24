class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli-releases"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli-releases/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "1692cc5eb35b2ae49d896f2e788deba058a1501e22cc7dd2260f96fb3b74ff0b"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli-releases/releases/download/v#{version}/webai-darwin-x64"
      sha256 "647e299f9264a3e8e8fca0455acf860bbc585bb2388aabb81d149325f9703fe5"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli-releases/releases/download/v#{version}/webai-linux"
    sha256 "4a2802417621bed2f457cd4c3600c380be690b8ed1b7450f46955b3cfa104ebf"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
