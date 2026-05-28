class Trustssh < Formula
  desc "SSH login broker for short-lived OpenSSH user certificates using AWS Cognito and Lambda"
  homepage "https://github.com/nikon-63/TrustSSH"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.1.0/trustssh_Darwin_arm64.tar.gz"
      sha256 "bc1d1ff99fab0b8c3fb47cf5c82b83a17ab9ef485860348bb2b35f39f6eab5f0"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.1.0/trustssh_Darwin_x86_64.tar.gz"
      sha256 "ffe872b5fa6e107507c744a8c718c497689677d43b9e526dd3d9df8558d2c464"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.1.0/trustssh_Linux_arm64.tar.gz"
      sha256 "2fbdacd507d8c28014a8c76422e4b61ca6e831e77baa6a192d0454c5bd0761b4"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.1.0/trustssh_Linux_x86_64.tar.gz"
      sha256 "746d52fc70ac177deda59c107efe54dad354f3c96ce5cf96d03c8bec42da768a"
    end
  end

  def install
    bin.install "trustssh"
  end

  test do
    assert_match "trustssh", shell_output("#{bin}/trustssh")
  end
end
