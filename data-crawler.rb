class DataCrawler < Formula
  desc "Uploads data repositories to Watson Developer Cloud services"
  homepage "https://www.ibm.com/watson/developer/"
  url "https://ibm.biz/watson-crawler-zip"
  version "2.1.4"
  sha256 "9a0ce4e4567861c460f7a950bcf986f181f702b3bbfa337ef40f1a5bba7d0ef3"

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
