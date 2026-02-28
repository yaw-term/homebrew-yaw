cask "yaw" do
  version "0.9.62"
  sha256 "89f6df650d8789f55a9e9d035d76d5174f5e8b7a1aeb027a9e8b66800fea5fc1"

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
