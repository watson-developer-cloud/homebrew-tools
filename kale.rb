class Kale < Formula
  desc "Provisions & configures WDC Retrieve & Rank, Document Conversion services"
  homepage "https://github.com/IBM-Watson/kale"
  url "https://github.com/IBM-Watson/kale/releases/download/v1.5.1/kale-1.5.1-standalone.jar"
  sha256 "75b53654fbec0638156a0b1b5054c0d14b70809c397d0c44135feddd3f669cc8"

  def install
    lib.install Dir["*"]

    kale_jar = "kale-#{version}-standalone.jar"

    bin.mkpath
    (bin/"kale").write <<-EOS.undent
      #!/bin/sh
      java -jar #{[lib, kale_jar].join(File::Separator)}
    EOS
  end

  test do
    system "kale"
  end
end
