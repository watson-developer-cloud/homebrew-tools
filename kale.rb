class Kale < Formula
  desc "Provisions & configures WDC Retrieve & Rank, Document Conversion services"
  homepage "https://github.com/IBM-Watson/kale"
  version "1.8.1"
  sha256 "a20b1a85d398b23ed4bade1b81c1cd62f01e102ae8c89363e8b7dd9a5c80551e"
  url "https://github.com/IBM-Watson/kale/releases/download/v#{version}/kale-#{version}-standalone.jar"

  depends_on :java

  def install
    libexec.install "kale-#{version}-standalone.jar"
    bin.write_jar_script libexec/"kale-#{version}-standalone.jar", "kale"
  end

  test do
    system "kale"
  end
end
