class Sfa < Formula
  desc "Small File Archive CLI for Unix directory trees with many small files"
  homepage "https://github.com/myWsq/sfa"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/myWsq/sfa/releases/download/v1.0.0/sfa-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "92b3786f41dd50651b5eca4033a16bc4ee8ca0334da4b9b2dfa0dd4aadea80f4"
    end

    on_intel do
      url "https://github.com/myWsq/sfa/releases/download/v1.0.0/sfa-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0e91692bd5d983413ddb2c9d7333cf3afe2eaa6d0e91dd48bbccca996e40a171"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/myWsq/sfa/releases/download/v1.0.0/sfa-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e7d955028f321137ed0f6d404edf9d5f188fd4c8a4bc1318bd16629ac47ea167"
  end

  def install
    bin.install "sfa"
    prefix.install "README.md", "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sfa --version")
  end
end
