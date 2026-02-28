cask "yaw" do
  version "0.9.72"
  sha256 "4ec172adf3a8e2291da92fe1c12587fdd00f6a4678490a680d99f284c8187c7d"

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
