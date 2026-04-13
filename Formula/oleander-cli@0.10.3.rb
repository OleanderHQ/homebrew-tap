class OleanderCliAT0103 < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.10.3.tar.gz"
  version "0.10.3"
  sha256 "2acb323a14ca6d76fe463cb0aaa9695e38b6161081549c7357272b8e62c86446"
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
