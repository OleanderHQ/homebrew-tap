class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.27.0.tar.gz"
  sha256 "e63db5f7987c7a95547f81b4d41ea8bede9b8bb58d1e3363ade812fe795419df"
  license "LicenseRef-OleanderHQ-Proprietary"

  depends_on "node"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
