class DataCrawler < Formula
  desc "A crawler that connects data repositories to Watson Developer Cloud services"
  homepage "https://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/"
  url "http://ibm.biz/watson-crawler-zip"
  version "1.3.0"
  sha256 "47181a13e7851a2a2e4085b4acf6cbb7398bccdca8b0cb678c1db15402ceffb0"

  def install
    rm Dir["bin/*.bat"] # unused on osx
    prefix.install "share"
    libexec.install Dir["*"] - ["share"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "crawler --help"
  end
end
