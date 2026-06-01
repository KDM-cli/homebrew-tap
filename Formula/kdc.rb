class Kdc < Formula
  desc "Kubernetes Docker Commander, a project-centric DevOps TUI"
  homepage "https://github.com/KDM-cli/kdc-cli"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v${version}/kdc-v${version}-aarch64-apple-darwin.tar.gz"
      sha256 "aaa43dbb179010a8a2b2d7160ad46f5da8ccfc85cbeb7a0ac950bc0e0878e68d"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v\${version}/kdc-v${version}-x86_64-apple-darwin.tar.gz"
      sha256 "ad9ae51e11ed10fdd65dc3ddb1ad93003d8d214736659e68cf33e55fb288b917"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v${version}/kdc-v${version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23941e122db1a81060847bc65b00b61de72444dfd877a05e91f8c7f013e8fc43"
    else
      url "https://github.com/KDM-cli/kdc-cli/releases/download/v${version}/kdc-v${version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0cffed494404729ee29cd498d62080e7c4917090ac19461c7478416a25d0526a"
    end
  end

  def install
    bin.install "kdc"
  end

  test do
    system "\#{bin}/kdc", "--version"
  end
end
