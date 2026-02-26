cask "yaw" do
  version "0.9.54"
  sha256 "8409f4d9ce60f969e9cdb88d2bef1f5fd9dbfc88e66458b1bebf9b90ce1a765b"

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
