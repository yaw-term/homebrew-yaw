cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.122"

  if Hardware::CPU.arm?
    sha256 "f5b9b2c7677fe85e4bdb1b7c3b0d8659b9eb7bf5b920b6b80443ba8f2703cbbd"
  else
    sha256 "5d0ebf0d5bc6cd7d4004785c576d994662dea9e0af046bd2a0cd68f6c87ea266"
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
