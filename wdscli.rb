class Wdscli < Formula
  desc "Command-line interface to the IBM Watson Discovery Service API"
  homepage "https://github.com/bruceadams/wdscli"
  url "https://github.com/bruceadams/wdscli/releases/download/2.2.6/wdscli.macos"
  sha256 "09ebd59f5c90fcaccacd73154a4e481234da6b74c55c5813a777744e54357a7f"

  def install
    bin.install "wdscli.macos" => "wdscli"
    chmod 0555, "#{bin}/wdscli"

    system "#{bin}/wdscli generate-completions bash > wdscli.bash"
    bash_completion.install "wdscli.bash"

    system "#{bin}/wdscli generate-completions fish > wdscli.fish"
    fish_completion.install "wdscli.fish"

    system "#{bin}/wdscli generate-completions zsh  > wdscli.zsh"
    zsh_completion.install  "wdscli.zsh"
  end

  test do
    system "#{bin}/wdscli", "help"
  end
end
