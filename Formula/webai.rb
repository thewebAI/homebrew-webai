class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.22"
  url "https://github.com/thewebAI/webai-cli/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "3fe237cce09275c0577f5d2d31f5f38bafd8f1b70fbb3554e0b541d70c7df5e1"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "d299f5a4ac541b9df7cae6c38c7c4ef8f3255eb89f37ce4f2f3a582c52ac003e"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "32b79c2709622f0c86688cee81ce3112c68f0441deedee56094a1af5ebd99fc7"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
