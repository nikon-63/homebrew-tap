class Trustssh < Formula
  desc "SSH login broker for short-lived OpenSSH user certificates using AWS Cognito and Lambda"
  homepage "https://github.com/nikon-63/TrustSSH"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.0/trustssh_Darwin_arm64.tar.gz"
      sha256 "f3fa6601bd5773c242376e0f587d4c09bb00b7f9627e9f1ef3ad144cacf1daf0"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.0/trustssh_Darwin_x86_64.tar.gz"
      sha256 "d7554fe9763c77d298188fba4b1cf3f95fd1cc219d44f57cab76162fdb44c8b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.0/trustssh_Linux_arm64.tar.gz"
      sha256 "00b9e8f4813becf5e9b02170911e56c16ae5e068de9c1a5ae853aab7d5004f1d"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.0/trustssh_Linux_x86_64.tar.gz"
      sha256 "a653d12f0675299db9ce497982d5aba475f34402e2cec3fc3704cd7e9bda62c9"
    end
  end

  def install
    bin.install "trustssh"
  end

  test do
    assert_match "trustssh", shell_output("#{bin}/trustssh")
  end
end
