cask "yaw" do
  version "0.9.60"
  sha256 "19bda8830c8afccd62ca50e2ac7bcfd0af0780d31fe21c5608e1be9c204a3f53"

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
