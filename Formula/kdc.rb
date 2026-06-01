class Kdc < Formula
  desc "Kubernetes Docker Commander, a project-centric DevOps TUI"
  homepage "https://github.com/KDM-cli/kdc-cli"
  version "0.1.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.4/kdc-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "fc20930fe946cea64cd395d511c11ca3bfe185b1f05bf7104db8f0665819f5c3"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.4/kdc-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "65fe3d696c40cec9156744314f9717d796d229c8fee79c23e3a35c5e34bd2cfe"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.4/kdc-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24baaa1f011a1934c8ccbca43cfb8401b3736fb2f56f0ec031e5a686abb479a2"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.4/kdc-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f54d85e2855421e0315992505ec9ba92713a7340e874315114baf5c0615ec47b"
    end
  end

  def install
    bin.install "kdc"
  end

  test do
    system "#{bin}/kdc", "--version"
  end
end
