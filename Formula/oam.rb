class Oam < Formula
  desc "JavaScript and TypeScript runtime built on Rust and V8, for TypeScript and MCP servers"
  homepage "https://oamjs.org"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/YawLabs/oam/releases/download/v0.14.0/oam-aarch64-apple-darwin", using: :nounzip
      sha256 "ff011d2dd2367003b119740cbec34ff56e955daa4f0a3a76885d86d78e2bf3cb"
    end
    on_intel do
      url "https://github.com/YawLabs/oam/releases/download/v0.14.0/oam-x86_64-apple-darwin", using: :nounzip
      sha256 "27ef51c1a4974fab75bc0497fdf74b40f68eedf8a08fa1980cf3d4166b5c7cda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/YawLabs/oam/releases/download/v0.14.0/oam-x86_64-unknown-linux-gnu", using: :nounzip
      sha256 "a90f33b882e5327153937425c9663aba6fe27edbda1773592f45cc1cd8585f12"
    end
    # No linux-arm64 block: that asset has never been released. The V8 startup
    # snapshot forbids cross-compiling, so it needs a native ARM builder.
    # Omitting it fails with "not available for this architecture" rather than
    # 404-ing on a URL that was never published.
  end

  def install
    # Each per-arch release asset is a single bare binary; rename to the command.
    bin.install Dir["*"].first => "oam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oam --version")
    # Proves it actually executes, not just that a file landed in bin.
    assert_equal "4", shell_output("#{bin}/oam -pe '2+2'").strip
  end
end
