cask "yaw" do
  version "0.9.77"
  sha256 "b390560a0e22493ad9d548dd5af8ea4b5115bfa74b3fa8345ca0cd372bb120fc"

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
