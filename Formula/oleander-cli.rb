class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.21.0.tar.gz"
  sha256 "089272c8865739e718c3dc20e5195a0d7fb5d5cfaf98cb432a60ae360870efad"
  license "LicenseRef-OleanderHQ-Proprietary"

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
