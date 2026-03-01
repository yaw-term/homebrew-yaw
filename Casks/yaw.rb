cask "yaw" do
  version "0.9.75"
  sha256 "410685dd817c7a6a76f9aac1b3190c39e8821ff4f9c705b1f6b27f3de412bf22"

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
