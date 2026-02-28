cask "yaw" do
  version "0.9.66"
  sha256 "e455be3397774c4e60971ecbdd2f3db28bca2745292c7bed8b2c31c1f50a9a5d"

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
