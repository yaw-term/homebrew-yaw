cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.21"

  if Hardware::CPU.arm?
    sha256 "f99e0b57e8ac23981fed98f16690946ff4d2b3044a24f277320668ab04739809"
  else
    sha256 "39cbe53a25a91ab0693015ea7a68bcdab9e2b1a86571fbd946515e6d87591e12"
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
