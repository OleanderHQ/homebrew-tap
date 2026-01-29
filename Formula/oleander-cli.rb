class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.5.1.tar.gz"
  sha256 "199f1d794dcc8172d660412f76e8ccd5f366ece7f663293c48ae8081292c7990"
  license "LicenseRef-OleanderHQ-Proprietary"

  depends_on "node"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
