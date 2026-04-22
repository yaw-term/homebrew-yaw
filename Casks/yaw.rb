cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.2"

  if Hardware::CPU.arm?
    sha256 "527db2f9ab80dbe07b1dec0aca2c5e6d132a1c34e89902419d3da56aeb743cfc"
  else
    sha256 "097adb68a0ce52423c326c6ae99549e0079d9fbd940265f26a7e5c5477e2a0ec"
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
