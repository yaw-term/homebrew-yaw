cask "yaw" do
  version "0.9.77"
  sha256 "85242b7565c49d8a4bd89ac80acdd2755e93275fc6a003d663e4c7fc11fb9f8f"

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
