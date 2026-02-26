cask "yaw" do
  version "0.9.55"
  sha256 "597db0f2c5bfbdf3dd2fef1e244bb521415af130285f9ca89a8d18c5a685492d"

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
