class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v0.1.12/webai"
      sha256 ""
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v0.1.12/webai"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v0.1.12/webai"
    sha256 ""
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
