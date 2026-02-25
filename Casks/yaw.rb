cask "yaw" do
  version "0.9.52"
  sha256 "c3d9731b2d3918e62c62cea2278eacd3884dc74cd3ea30f87b54bbf565fe79f3"

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
