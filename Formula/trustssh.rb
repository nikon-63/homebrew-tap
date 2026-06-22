class Trustssh < Formula
  desc "SSH login broker for short-lived OpenSSH user certificates using AWS Cognito and Lambda"
  homepage "https://github.com/nikon-63/TrustSSH"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.1/trustssh_Darwin_arm64.tar.gz"
      sha256 "20237d22430804636bfcb8744b4a15159f92a3f57833aaa9f689611b5b0fb9a4"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.1/trustssh_Darwin_x86_64.tar.gz"
      sha256 "2a7a52e4b68932469ac770d1e5a51d5b036a24693ba6a49652eba532d2fe52a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.1/trustssh_Linux_arm64.tar.gz"
      sha256 "54595fce955eb7c84d5e9b3bf786b054567d030f2ef9d1a3edd205c0676cca15"
    else
      url "https://github.com/nikon-63/TrustSSH/releases/download/1.2.1/trustssh_Linux_x86_64.tar.gz"
      sha256 "71e353045ccf85099e67d1b0ad475e87545de48d0ccfd6e88f25e1fcd25dded1"
    end
  end

  def install
    bin.install "trustssh"
  end

  test do
    assert_match "trustssh", shell_output("#{bin}/trustssh")
  end
end
