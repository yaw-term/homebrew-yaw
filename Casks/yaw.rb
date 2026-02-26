cask "yaw" do
  version "0.9.56"
  sha256 "4add453c241df4b98d3072ff7d5d26701fcc729082b160f1555a32ecdca3bd80"

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
