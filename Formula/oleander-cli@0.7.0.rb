class OleanderCliAT070 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.7.0.tar.gz"
  version "0.7.0"
  sha256 "10e9cbdbda8aa45c2c7db41b768992fe956656a541057a4df27f4961123082fd"
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
