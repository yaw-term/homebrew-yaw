cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.711"

  if Hardware::CPU.arm?
    sha256 "7f36ecda9eb586d57ae005aae2e7288a5ac724df7a354a63d06481840fd97b06"
  else
    sha256 "aa55a378448b4a62ae13287564a464566cc661a6b74c22c5c31b1710dfe7fdf0"
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
