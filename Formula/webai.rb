class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli-public"
  version "0.1.42"
  url "https://github.com/thewebAI/webai-cli-public/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"
  

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "c60ba1334c7692fa695e80dc66a63f80508ddce5695d8530ffe6dfdbd8abb4f3"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-darwin-x64"
      sha256 "f7fabc91800a3ef2b36562464e3e1abbc7d6e5b70b068496750c52da608a2caa"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli-public/releases/download/v#{version}/webai-linux"
    sha256 "411c7e858ce4425ec1c5f3c2f6d3ce674c7f8040581aae89cd6e5a96111d7f8f"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
