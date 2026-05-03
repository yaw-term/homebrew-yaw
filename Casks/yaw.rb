cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.9"

  if Hardware::CPU.arm?
    sha256 "87327c0b4dd7581a27057c82cc6d9a5a2838d4b15151186a05fb008d2a2d3ba8"
  else
    sha256 "0cf1560bcfdaf2fbce72e0909c0c4371190c60ea874b38ebaf5da3d8ca644729"
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
