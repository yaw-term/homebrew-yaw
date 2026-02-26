cask "yaw" do
  version "0.9.58"
  sha256 "391c2e174cf1b9e198bcb67a33121093293189f7e98a52297a7fc79e4d87947e"

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
