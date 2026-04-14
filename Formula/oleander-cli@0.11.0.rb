class OleanderCliAT0110 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.11.0.tar.gz"
  version "0.11.0"
  sha256 "fa2f66c13e7568ab6fdb64b07baff2849fda3dd4511fbebb6c80cd2d6fe6cea0"
  license "LicenseRef-OleanderHQ-Proprietary"

  keg_only :versioned_formula

  depends_on "node"
  depends_on "uv"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
