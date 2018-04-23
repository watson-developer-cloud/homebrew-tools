class DataCrawler < Formula
  desc "Uploads data repositories to Watson Developer Cloud services"
  homepage "https://www.ibm.com/watson/developer/"
  url "https://ibm.biz/watson-crawler-zip"
  version "2.1.5"
  sha256 "3a146176aac3751b6e21d5796f71e51764f25005ec2f1edc5214800e6c7fdc59"

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
