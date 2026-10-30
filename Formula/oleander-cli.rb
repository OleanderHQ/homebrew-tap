class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.25.0.tar.gz"
  sha256 "1061156284f6bca2a5a236395f5b2dad6bd0d8a366b2bd248783b2a4c6fc1968"
  license "LicenseRef-OleanderHQ-Proprietary"

  depends_on "node"
  depends_on "uv"
  depends_on "duckdb"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
