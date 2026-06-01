class Kdc < Formula
  desc "Kubernetes Docker Commander, a project-centric DevOps TUI"
  homepage "https://github.com/KDM-cli/kdc-cli"
  version "0.1.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.1/kdc-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "ec37c4a1b958fc0234143cc1fbfd522261a218ef9b2c2f206f5d1da4623a4036"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.1/kdc-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "414684a341ba3f779cadcf3719feb39adecb9256a1de461a73bbead6efb57db4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.1/kdc-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ceccc2ba8f09c55be3c69fa54ed0cda15da6d8165a0a612e7d80f12514f6c2f4"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v0.1.1/kdc-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e11349106716f99b727c9cc7e349b865396160ae7c07b7b0a8f01db15e828fa"
    end
  end

  def install
    bin.install "kdc"
  end

  test do
    system "#{bin}/kdc", "--version"
  end
end
