cask "yaw" do
  version "0.9.77"
  sha256 "d0f3bff92242ffbcea99450f0680af7f030ab18a61dd57dfb36eafdcfc6a71e2"

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
