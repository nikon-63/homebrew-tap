class Trustssh < Formula
  desc "SSH login broker for short-lived OpenSSH user certificates using AWS Cognito and Lambda"
  homepage "https://github.com/nikon-63/TrustSSH"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.1/trustssh_Darwin_arm64.tar.gz"
      sha256 "4b9efcd309a96d3f5466baa940b33943b1100809551276ceea05072c8249e565"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.1/trustssh_Darwin_x86_64.tar.gz"
      sha256 "931aec3e9fab8f343f779e22887a17bba88a75a69c127d4e651bae5f39f6c257"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.1/trustssh_Linux_arm64.tar.gz"
      sha256 "deb844344d725d52833059e2f33f6b6f51164c38f3352a4c542ae490a1844ec7"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.1/trustssh_Linux_x86_64.tar.gz"
      sha256 "0ac94cafc2350ad7b3016ba794481f042f2ea31ab0861b77a4d695773a0f37be"
    end
  end

  def install
    bin.install "trustssh"
  end

  test do
    assert_match "trustssh", shell_output("#{bin}/trustssh")
  end
end
