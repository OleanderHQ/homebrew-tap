class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.16.0.tar.gz"
  sha256 "d45689aebfd13154da9adc58493954df153d0113cb2138841ccca8c31f12f45b"
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
