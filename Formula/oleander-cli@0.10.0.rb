class OleanderCliAT0100 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.10.0.tar.gz"
  version "0.10.0"
  sha256 "82cb889106e6c280a035d87dfdf651800ac2705f6b1ba12c556b0ef22df30e0f"
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
