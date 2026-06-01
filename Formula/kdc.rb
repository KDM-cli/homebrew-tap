class Kdc < Formula
  desc "Kubernetes Docker Commander, a project-centric DevOps TUI"
  homepage "https://github.com/KDM-cli/kdc-cli"
  version "0.1.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.3/kdc-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "1356057171b213514845bb056b0d86689f9c57867856218f499faed149563106"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.3/kdc-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "cd89528d484170f222cbb0a1a750ba813fbdef2d5ddeb2e9bd9a4d9197c07547"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.3/kdc-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6db44e1efe2d5c6bfb54d0e370ef2eb4e73f84dfa9e6cc8ee4f18622a791b5f"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.3/kdc-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd2bd881ce6d78dffe517f4e3626dfcf3d3a6560534e9773a940a4906d42cfe1"
    end
  end

  def install
    bin.install "kdc"
  end

  test do
    system "#{bin}/kdc", "--version"
  end
end
