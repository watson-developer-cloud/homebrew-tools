class DataCrawler < Formula
  desc "Uploads data repositories to Watson Developer Cloud services"
  homepage "https://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/"
  url "https://ibm.biz/watson-crawler-zip"
  version "2.1.0"
  sha256 "f383182fc34a7eb81af7e3a63f1055912a713373354385ef341bfd8ef6c0fd3c"

  depends_on :java

  def install
    rm Dir["bin/*.bat"] # unused on osx
    prefix.install "share"
    libexec.install Dir["*"] - ["share"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/crawler --help"
  end
end
