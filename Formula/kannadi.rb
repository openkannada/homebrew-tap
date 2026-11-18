class Kannadi < Formula
  desc "Convert Kannada documents in legacy fonts such as Nudi to Unicode, and back"
  homepage "https://github.com/openkannada/kannadi"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/openkannada/kannadi/releases/download/v0.1.0/kannadi-cli-aarch64-apple-darwin.tar.xz"
      sha256 "d6951ba960906ccfbe3bd42dbea8c5dbc66ebc2572e49fa13acbcd5c923b4f57"
    end
    on_intel do
      url "https://github.com/openkannada/kannadi/releases/download/v0.1.0/kannadi-cli-x86_64-apple-darwin.tar.xz"
      sha256 "e67bec2fcfd879f9c70bb10d9b2e81ead5b098121df019406a6235ff6fcbb897"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/openkannada/kannadi/releases/download/v0.1.0/kannadi-cli-aarch64-unknown-linux-musl.tar.xz"
      sha256 "87baa3044189457c896a91ad5475f4841a3cb3628e36f85f6bfd42da814bd0ed"
    end
    on_intel do
      url "https://github.com/openkannada/kannadi/releases/download/v0.1.0/kannadi-cli-x86_64-unknown-linux-musl.tar.xz"
      sha256 "103b6bfdf25413b3e4a69595b679ca1d087673cc4022562993e1b801e7222899"
    end
  end

  def install
    bin.install "kannadi"
    man1.install Dir["man/*.1"]
    bash_completion.install "completions/kannadi.bash" => "kannadi"
    zsh_completion.install "completions/_kannadi"
    fish_completion.install "completions/kannadi.fish"
  end

  test do
    assert_match "kannadi #{version}", shell_output("#{bin}/kannadi --version")
    (testpath/"a.txt").binwrite "P\xC0\xA3\xC0\xDF\x71\xC0".b
    system bin/"kannadi", "to-unicode", "a.txt", "--out", "out", "--strict"
    assert_equal "ಕನ್ನಡ", (testpath/"out/a.txt").read
  end
end
