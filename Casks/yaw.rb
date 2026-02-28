cask "yaw" do
  version "0.9.68"
  sha256 "2da4254807ed538ef354760a0b6c5268b2fd92a71a8860b11486bda40c4b7c09"

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
