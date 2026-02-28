cask "yaw" do
  version "0.9.61"
  sha256 "5f3b6a8b9b1a149d34122f7f83175732084a42369682429e69a7f51fc3bb2176"

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
