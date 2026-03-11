cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.97"

  if Hardware::CPU.arm?
    sha256 "fed088864f6bbf70b5c554ed8c17039193dd8c258a234c9c3794f255f5a2b522"
  else
    sha256 "88d6c98cc9071b707f430ac0d8157302b5ddea35a7412bae042f4188801a8184"
  end

  url "https://yaw.sh/downloads/yaw-darwin-#{arch}-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
