class OleanderCliAT0123 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.12.3.tar.gz"
  version "0.12.3"
  sha256 "a9a45d745672a5cfb676e73bc9ca7d012932a72ce6c6b0105e4a8c9e7cee535c"
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
