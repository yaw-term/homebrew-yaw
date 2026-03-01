cask "yaw" do
  version "0.9.74"
  sha256 "d03b29f1c73a22d2f430b62650e5701dec0395e248e0482997d45a34daf4ff8c"

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
