cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.23"

  if Hardware::CPU.arm?
    sha256 "0ea2e6aecf521c40cd6df3429abf1fffd10fa66d5ad39c6095b39b4eb17f8c47"
  else
    sha256 "0d5ed5bebcf8a6eb6ec7ffa438eb6b400083ace68a6d5efd9e0140b89ca7fc17"
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
