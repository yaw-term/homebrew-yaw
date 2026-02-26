cask "yaw" do
  version "0.9.52"
  sha256 "6a6dbf3a33f14387fe77170ab16adaa19842a6571331c9ffbe313306e57141ca"

  url "https://yaw.sh/downloads/yaw-darwin-arm64-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
