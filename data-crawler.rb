class DataCrawler < Formula
  desc "A crawler that connects data repositories to Watson Developer Cloud services"
  homepage "https://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/"
  url "http://ibm.biz/watson-crawler-zip"
  version "0.3.2"
  sha256 "644d5e06f05c7ca02bdd0902fccc36700f3f15da3cc40b12bd9d48d7dfb0d937"

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
