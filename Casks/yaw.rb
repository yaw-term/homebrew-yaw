cask "yaw" do
  version "0.9.77"
  sha256 "053c90574c5a6cb57a3d3e800035f002835bcaee87fcae86ea607d4b6efbb2c3"

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
