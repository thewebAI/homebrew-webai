class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.24"
  url "https://github.com/thewebAI/webai-cli/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "d33c59887421b0891f6ac8933decdec2bfb80633c4164b569e03e3cd6f0778c5"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "dfabf9823aa437c382388a51f4c7d335c9d6f60bce8affe3716023449158fff1"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "9eb65e9d6b96de4a9b309dc3bdf8ca6d3e11205479b45e73fcc9235cd3ec63b5"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
