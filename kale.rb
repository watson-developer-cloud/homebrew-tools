class Kale < Formula
  desc "Provisions & configures WDC Retrieve & Rank, Document Conversion services"
  homepage "https://github.com/IBM-Watson/kale"
  url "https://github.com/IBM-Watson/kale/releases/download/v1.8.1/kale-1.8.1-standalone.jar"
  sha256 "a20b1a85d398b23ed4bade1b81c1cd62f01e102ae8c89363e8b7dd9a5c80551e"

  depends_on :java

  def install
    libexec.install "kale-#{version}-standalone.jar"
    bin.write_jar_script libexec/"kale-#{version}-standalone.jar", "kale"
  end

  test do
    system "#{bin}/kale"
  end
end
