cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.6"

  if Hardware::CPU.arm?
    sha256 "41a027432b7c5e98fe7e954720018fce8aed7e4591c6e5c9847f5cba707b6592"
  else
    sha256 "2fc50e3c2c6c2a67212089a95041a9440cddd911f712ecc8a9b2c279638c8f47"
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
