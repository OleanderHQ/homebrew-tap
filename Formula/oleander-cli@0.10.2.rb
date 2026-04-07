class OleanderCliAT0102 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.10.2.tar.gz"
  version "0.10.2"
  sha256 "87c7d805b049ee5b4bd794abf50e8ae29aba4270e5df791f1f66e6d791d4201d"
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
