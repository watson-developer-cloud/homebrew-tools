class WatsonDiscoveryTool < Formula
  desc "Command-line interface to the IBM Watson Discovery Service API"
  homepage "https://github.com/bruceadams/wdscli"
  url "https://github.com/bruceadams/wdscli/releases/download/2.3.0/wdscli.macos"
  sha256 "0cced55d02c231628575ffb259dec10a2b8e7591c9775a498bcc3de568f48732"

  def install
    bin.install "wdscli.macos" => "watson-discovery-tool"
    chmod 0555, "#{bin}/watson-discovery-tool"

    system "#{bin}/watson-discovery-tool generate-completions bash > watson-discovery-tool.bash"
    bash_completion.install "watson-discovery-tool.bash"

    system "#{bin}/watson-discovery-tool generate-completions fish > watson-discovery-tool.fish"
    fish_completion.install "watson-discovery-tool.fish"

    system "#{bin}/watson-discovery-tool generate-completions zsh  > watson-discovery-tool.zsh"
    zsh_completion.install  "watson-discovery-tool.zsh"
  end

  test do
    system "#{bin}/watson-discovery-tool", "help"
  end
end
