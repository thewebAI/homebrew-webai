class Webai < Formula
  desc "WebAI CLI tool"
  homepage "https://github.com/thewebAI/webai-cli-releases"
  version "0.1.4"  # This will be automatically updated

  # URL where Homebrew can download your binary
  # #{version} is automatically replaced with the latest version
  url "https://github.com/thewebAI/webai-cli-releases/releases/download/v#{version}/webai"

  # if OS.mac? && Hardware::CPU.arm?
  #   url "https://github.com/theWebai/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
  # elsif OS.mac? && Hardware::CPU.intel?
  #   url "https://github.com/theWebai/webai-cli/releases/download/v#{version}/webai-darwin-x64"
  # elsif OS.linux? && Hardware::CPU.intel?
  #   url "https://github.com/theWebai/webai-cli/releases/download/v#{version}/webai-linux-x64"
  # end
  # SHA256 checksum of your binary for security verification
  # #{sha256} is automatically replaced with the correct checksum
  # sha256 "#{sha256}"
  sha256 "050367544c767eda8c7c284b2d5ede7a3a993132594c6fa1474d55d4160fe351"

  def install
    chmod 0755, "webai"
    bin.install "webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end