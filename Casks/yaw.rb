cask "yaw" do
  version "0.9.51"
  sha256 "1503e9265ffefc4c00a7a1a106b0b4d2723237ae57281af86cb843c923eaa47f"

  url "https://yaw.sh/downloads/yaw-#{version}-mac-x64.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
