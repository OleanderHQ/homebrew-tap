class OleanderCliAT091 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.9.1.tar.gz"
  version "0.9.1"
  sha256 "ce458305bf8db2991bfac33293b0630c08c0015ccaf1652ad8c651768d759a11"
  license "LicenseRef-OleanderHQ-Proprietary"

  keg_only :versioned_formula

  depends_on "node"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
