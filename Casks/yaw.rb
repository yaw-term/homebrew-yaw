cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.0"

  if Hardware::CPU.arm?
    sha256 "6ff578e709b80f72f6be08d5048d0b1f57decf82afede5b897292ededc8e959c"
  else
    sha256 "9cd4a73f35183557d12dcb62c37516a02885f2f9c4b17d0d3abef004aafb4e2a"
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
