cask "yaw" do
  version "0.9.65"
  sha256 "6e2bc64ace3770ac031101402cc247981ec5c0eddbdd713c4b423992c64ebf17"

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
