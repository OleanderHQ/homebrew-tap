class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.28.0.tar.gz"
  sha256 "ef80e96674a26ca10372e596642cf844665409e85b89a62593f280ef232a681d"
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
