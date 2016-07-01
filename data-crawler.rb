class DataCrawler < Formula
  desc "A crawler that connects data repositories to Watson Developer Cloud services"
  homepage "https://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/"
  url "http://ibm.biz/watson-crawler-zip"

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
