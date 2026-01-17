class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.3.1.tar.gz"
  sha256 "56cdf3fb44c162cd382fabc57466457bfa0f235f996935e27238b1cef0024b86"
  license "LicenseRef-OleanderHQ-Proprietary"

  depends_on "node"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
