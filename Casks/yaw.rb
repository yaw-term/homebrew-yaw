cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.23"

  if Hardware::CPU.arm?
    sha256 "c2ca26c29e1b6db284d68df213feb3d0f3072e9bbaf86cb6da3004bbcee1db9e"
  else
    sha256 "89d07ba3333736f426f6b9ea4b9cf19638b525c0763cb4e453ddf7a7279ac1dd"
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
