class OleanderCliAT090 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.9.0.tar.gz"
  version "0.9.0"
  sha256 "d876e5740eba45cbb0ec954e73c20578ab49c502f3f2e62a0ac40810e18874d5"
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
