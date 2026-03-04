cask "yaw" do
  version "0.9.77"
  sha256 "3d5fb062e70c3a1ae4392def17c8fd7305222c90e6efb4b717204787b2ceb47f"

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
