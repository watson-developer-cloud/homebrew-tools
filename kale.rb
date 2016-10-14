class Kale < Formula
  desc "Provisions & configures WDC Retrieve & Rank, Document Conversion services"
  homepage "https://github.com/IBM-Watson/kale"
  sha256 "81e0aade9a7dc2ff52fae6a0cff69dbbc811c3a935cf9f0587852c3426eefff1"
  url "https://github.com/IBM-Watson/kale/releases/download/v1.8.0/kale-1.8.0-standalone.jar"

  depends_on :java

  def install
    libexec.install "kale-#{version}-standalone.jar"
    bin.write_jar_script libexec/"kale-#{version}-standalone.jar", "kale"
  end

  test do
    system "kale"
  end
end
