class Webai < Formula
  desc "WebAI CLI - developer entry point into the webAI platform"
  homepage "https://github.com/thewebAI/webai-cli"
  version "0.1.17"
  url "https://github.com/thewebAI/webai-cli/archive/refs/tags/v#{version}.tar.gz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-arm64"
      sha256 "9b53c418054c1f85f84801273124a2d74cc5d35fed9cb457a2d96fdc57bfce7f"
    end
    on_intel do
      url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-darwin-x64"
      sha256 "220f28c0262ad1054370b830c042053684e730748825fad9e122e71214dba962"
    end
  end

  on_linux do
    url "https://github.com/thewebAI/webai-cli/releases/download/v#{version}/webai-linux"
    sha256 "ea5046db758cf5c15c2e433b365ad1532182cee63669d51d36fca14bb8e22e47"
  end

  def install
    bin.install Dir["webai-*"].first => "webai"
    chmod 0755, bin/"webai"
  end

  test do
    system "#{bin}/webai", "--version"
  end
end
