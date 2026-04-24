cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.12"

  if Hardware::CPU.arm?
    sha256 "cc0150d53156e018c61ba8fada2bf99d488daa459f305f5ba9c616713198af19"
  else
    sha256 "47607a8a09905a13ada012ccaf5c97f549c9c30dd2a693d4d8327e3e2cf5e359"
  end

  url "https://downloads.yaw.sh/yaw-darwin-#{arch}-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
