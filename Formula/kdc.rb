class Kdc < Formula
  desc "Kubernetes Docker Commander, a project-centric DevOps TUI"
  homepage "https://github.com/KDM-cli/kdc-cli"
  version "0.1.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.2/kdc-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "f93814a8e271b09bb093339ec2b66c540420950fe82f16fff769508f99e21ddd"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.2/kdc-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "464e8025052b149f4893c8d0c539f8431ab01dce88961dfc07c077bbad9796d3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.2/kdc-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71409295b7a89890b4257188c4cd16fc5b699469a6b3d6c5d2fd280c08a3480f"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.2/kdc-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d325452ff30289117bb7b6d0500cd9c6ef8e87c2fdeb0eb212ac9de47f42dd27"
    end
  end

  def install
    bin.install "kdc"
  end

  test do
    system "#{bin}/kdc", "--version"
  end
end
