class Kale < Formula
  desc "Provisions & configures WDC Retrieve & Rank, Document Conversion services"
  homepage "https://github.com/IBM-Watson/kale"
  version "1.6.0"
  sha256 "078941b5b678cf2284cfb4fb3fc6cb137f100c6f6628e23bcdec6dbf67775285"
  url "https://github.com/IBM-Watson/kale/releases/download/v#{version}/kale-#{version}-standalone.jar"

  def install
    lib.install Dir["*"]

    kale_jar = "kale-#{version}-standalone.jar"

    bin.mkpath
    (bin/"kale").write <<-EOS.undent
      #!/bin/sh
      java -jar #{[lib, kale_jar].join(File::Separator)} "$@"
    EOS
  end

  test do
    system "kale"
  end
end
