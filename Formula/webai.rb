class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.13"
  license "MIT"  # Add license if applicable
  
  # Use `head` to allow updates from the main branch
  head "https://github.com/thewebAI/webai-cli.git", branch: "main"

  # Add a bottle block to improve installation speed (optional)
  bottle do
    rebuild 0
    root_url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "e434d791ddcb93af4c9a5fd168eb5171c5b761a66adc6d35036ad481025b15fe"
    sha256 cellar: :any_skip_relocation, monterey: "a50c3d5692c0c72ca58135eaab76bf8dc42e6525a8973bc8c858fbfe60f34ef6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2e228aba4f22669de9b994ada8d443699edad6a37f7df02796b3e782845ade2b"
  end

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "e434d791ddcb93af4c9a5fd168eb5171c5b761a66adc6d35036ad481025b15fe"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "a50c3d5692c0c72ca58135eaab76bf8dc42e6525a8973bc8c858fbfe60f34ef6"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "2e228aba4f22669de9b994ada8d443699edad6a37f7df02796b3e782845ade2b"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
