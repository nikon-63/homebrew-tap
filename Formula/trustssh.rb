class Trustssh < Formula
    desc "SSH login broker for short-lived OpenSSH user certificates using AWS Cognito and Lambda"
    homepage "https://github.com/nikon-63/TrustSSH"
    version "1.0.0"

    on_macos do
        if Hardware::CPU.arm?
        url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.0/trustssh_Darwin_arm64.tar.gz"
        sha256 "3ab0c59c12c9534e719ccc841f5f488ee550e36f1addbecbafd58328a31ce5dc"
        else
        url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.0/trustssh_Darwin_x86_64.tar.gz"
        sha256 "0583403fefbabb7ba9a97ea48077befc7ee65e3ea2a71313584d9ead20cd23ff"
        end
    end

    on_linux do
        if Hardware::CPU.arm?
        url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.0/trustssh_Linux_arm64.tar.gz"
        sha256 "92f0a5bf6652ebd95457881eb3683dd9da4432a0f807f355a1ca42c360d2dfea"
        else
        url "https://github.com/nikon-63/TrustSSH/releases/download/1.0.0/trustssh_Linux_x86_64.tar.gz"
        sha256 "58f5ef5f3ae647b23caa72ca584b8190f6a86949de9b90d7eab17f6e6f18221b"
        end
    end

    def install
        bin.install "trustssh"
    end

    test do
        assert_match "trustssh", shell_output("#{bin}/trustssh")
    end
end