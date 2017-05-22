class DataCrawler < Formula
  desc "Uploads data repositories to Watson Developer Cloud services"
  homepage "https://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/"
  url "https://ibm.biz/watson-crawler-zip"
  version "2.0.0"
  sha256 "f5516e1ccce056ba8847eb275584e920c3ee2938d42fe5e380a2d563dcaf8d0f"

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
