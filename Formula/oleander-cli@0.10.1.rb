class OleanderCliAT0101 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.10.1.tar.gz"
  version "0.10.1"
  sha256 "9ae239dc244cadbe7cefbd6ca33e64b7e1f128cfb5ab9a61cb2d20ad9b31c517"
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
