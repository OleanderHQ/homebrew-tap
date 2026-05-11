class OleanderCliAT0121 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.12.1.tar.gz"
  version "0.12.1"
  sha256 "b6cd078b879fe46ef6bc4da62ae681c774d43513d9a9f00fbaeadd8f28c67ad4"
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
