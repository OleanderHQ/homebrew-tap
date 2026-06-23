class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.12.4.tar.gz"
  sha256 "0033aceb050a8cb942c3e50a39d3b5c360782229e20f4b78b9ea4c4daa618cc8"
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
