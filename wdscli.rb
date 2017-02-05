class Wdscli < Formula
  desc "Command line interface to the IBM Watson Discovery Service API"
  homepage "https://github.com/bruceadams/wdscli"
  url "https://github.com/bruceadams/wdscli/releases/download/v0.13.0/wdscli.macos"
  version "0.13.0"
  sha256 "f3f78ff856d429ed454c949a0fa022860f5cc7e10b9d699c4376cceb205acc7b"

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
