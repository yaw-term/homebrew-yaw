cask "yaw" do
  version "0.9.60"
  sha256 "e1ee1f2f284ec3057fdc4f22b37774618dbddeb80ded3fa473d861d8355ec764"

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
