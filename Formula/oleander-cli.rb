class OleanderCli < Formula
  desc "Oleander CLI"
  homepage "https://oleander.dev"
  url "https://oleander-cli-releases.s3.amazonaws.com/oleander-cli-oleander-cli-v0.6.0.tar.gz"
  sha256 "c52cdaf6d1b40f6f18108c3e2470c37fa9f06b1192a38c0fda6aeb4a081d5fee"
  license "LicenseRef-OleanderHQ-Proprietary"

  depends_on "node"

  def install
    bin.install "oleander"
  end

  test do
    system "#{bin}/oleander", "--help"
  end
end
