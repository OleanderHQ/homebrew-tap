class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.1.0.tar.gz"
  sha256 "e669d7d0e4f98ed37ca23a92bdbdfadb8ce506bf7f755b561557caebd6be0e1b"
  license "LicenseRef-OleanderHQ-Proprietary"

  depends_on "node"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
