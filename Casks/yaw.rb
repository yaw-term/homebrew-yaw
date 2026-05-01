cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.1"

  if Hardware::CPU.arm?
    sha256 "fadd80fbdfb1715f4fe37ad51b6d13450094a7d6f54a73e374c6dc20b93715bf"
  else
    sha256 "60db374870abc343f1bbe3eaf1274b1c5988c68a70a909d81a3c37c45a20fe1e"
  end

  url "https://downloads.yaw.sh/yaw-darwin-#{arch}-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
