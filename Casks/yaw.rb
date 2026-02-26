cask "yaw" do
  version "0.9.57"
  sha256 "829f03de5790796163ef4c7ca19e72bf86ec910bcc5ff95b7713e6ed330c7b04"

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
