cask "yaw" do
  version "0.9.52"
  sha256 "ee85d63656e7414070196af28e541b6ccf1550c1e7308bbcf321cdceba9bd9f8"

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
