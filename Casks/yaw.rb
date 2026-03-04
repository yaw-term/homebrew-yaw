cask "yaw" do
  version "0.9.77"
  sha256 "60635ae86abd21db97e1a4a258f049f997007a43f0fa8e038a325f7fa0ecbc72"

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
