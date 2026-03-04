cask "yaw" do
  version "0.9.77"
  sha256 "da86381dcf1ffe60e1676be675c78077c6048c5b215ef5da631eb22c002f06a6"

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
