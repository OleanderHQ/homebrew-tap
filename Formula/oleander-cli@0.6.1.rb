class OleanderCliAT061 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.6.1.tar.gz"
  version "0.6.1"
  sha256 "378b4ed5b5569c13b6cd8ea7be549bde3967cc8ac567e831f3476271fab4e531"
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
