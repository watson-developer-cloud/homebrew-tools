class Kale < Formula
  desc "Provisions & configures WDC Retrieve & Rank, Document Conversion services"
  homepage "https://github.com/IBM-Watson/kale"
  sha256 "09c8aa86cacd8acc4403e9ffcadda1851a884718d86162cdb00ea48987b25c8c"
  url "https://github.com/IBM-Watson/kale/releases/download/v1.7.0/kale-1.7.0-standalone.jar"

  depends_on :java

  def install
    libexec.install "kale-#{version}-standalone.jar"
    bin.write_jar_script libexec/"kale-#{version}-standalone.jar", "kale"
  end

  test do
    system "kale"
  end
end
