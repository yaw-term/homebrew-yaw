cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.0"

  if Hardware::CPU.arm?
    sha256 "dc44fc5766c9ee88d420cde341f026b708a343aa526d2fb34917dbead0dffaf7"
  else
    sha256 "0dc3dcd0d2b51e60cffd228fcab08b205f232851d6ff10412c7de90cf109ab45"
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
