class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.14"
  license "MIT"  # Add license if applicable
  
  # Use `head` to allow updates from the main branch
  head "https://github.com/thewebAI/webai-cli.git", branch: "main"

  # Add a bottle block to improve installation speed (optional)
  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "0b573fb3bbddd9bd11f1c079cb60b8ac8878e838068e36cce11619b3750360f1"
    sha256 cellar: :any_skip_relocation, monterey: "d8bb6c015c40e41d91ba82560fe35128b5eb26c9215aecc7b089c9e0cee6ae9e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b7b8b6e90cf6116c0ddd3bda9e350d3e24d76dc11b0f578f364606fb1b7b50d9"
  end

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "0b573fb3bbddd9bd11f1c079cb60b8ac8878e838068e36cce11619b3750360f1"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "d8bb6c015c40e41d91ba82560fe35128b5eb26c9215aecc7b089c9e0cee6ae9e"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "b7b8b6e90cf6116c0ddd3bda9e350d3e24d76dc11b0f578f364606fb1b7b50d9"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
