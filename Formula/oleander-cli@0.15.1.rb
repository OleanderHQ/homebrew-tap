class OleanderCliAT0151 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.15.1.tar.gz"
  version "0.15.1"
  sha256 "41b77271043dbf1a900c081f5bc36a9e72c34b2e5303298a9fc0c338153f9416"
  license "LicenseRef-OleanderHQ-Proprietary"

  keg_only :versioned_formula

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
