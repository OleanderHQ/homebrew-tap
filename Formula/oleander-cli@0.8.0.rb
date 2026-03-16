class OleanderCliAT080 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.8.0.tar.gz"
  version "0.8.0"
  sha256 "6c03207d44910eeccaad1b8ccfe7b0aa42af7467ab8473a7705026a23dbf2326"
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
