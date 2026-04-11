cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.570"

  if Hardware::CPU.arm?
    sha256 "e94ae9b8a6e3088f27083fc48be3181dd9c5eeec3153b6aae4a75f61787732f6"
  else
    sha256 "112f68f34624f553229253de26ec074fa5e8a12329896f8895747073da7e81ae"
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
