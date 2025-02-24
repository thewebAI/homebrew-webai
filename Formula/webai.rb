class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.15"
  license "MIT"  # Add license if applicable
  
  # Use `head` to allow updates from the main branch
  head "https://github.com/thewebAI/webai-cli.git", branch: "main"

  # Add a bottle block to improve installation speed (optional)
  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "ced22675a0b36d0051e3335faa145d360213c4a6d952603bc40f408184037a92"
    sha256 cellar: :any_skip_relocation, monterey: "e231654d831d5c4207e0ea29f830300ef2c04c72209da7039434c62a94a51633"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5db917f7d50afdeca97ba5b02c78f6909952722bfbf50bae015c7f55bff1e7fa"
  end

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "ced22675a0b36d0051e3335faa145d360213c4a6d952603bc40f408184037a92"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "e231654d831d5c4207e0ea29f830300ef2c04c72209da7039434c62a94a51633"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "5db917f7d50afdeca97ba5b02c78f6909952722bfbf50bae015c7f55bff1e7fa"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
