cask "yaw" do
  version "0.9.61"
  sha256 "61af352cf8f2ebfd01dd99a02afe1384db82e8ee8c73d17f551a7b62d02b2dfb"

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
