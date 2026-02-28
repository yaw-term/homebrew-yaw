cask "yaw" do
  version "0.9.67"
  sha256 "1938dbaf8a4c8fd848cc9a3e9ad59745e26ef0dccf9e2f8e34ee66b0cbdbbb6c"

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
