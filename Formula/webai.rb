class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli-public"
  version "0.1.30"
  url "https://github.com/thewebAI/webai-cli-public/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"
  

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "72288a5c18015451d64fb2db77758207accd9030ec4deda1dc954bdb3edbda7b"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-x64"
      sha256 "1a7249bf5eed04681a63df96da0f25b6330c8339447f33cbbe0d187d392e0b1b"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-linux"
    sha256 "0f0072795ab2917875df7832f295e10f30bd1a60a875f6aac983ba1f1d8f19ec"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
