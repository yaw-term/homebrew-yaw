cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.26"

  if Hardware::CPU.arm?
    sha256 "69676404e0052603642e86ecd78a9839d2e29ff2e17dcb543f720e5cb4b9d22e"
  else
    sha256 "1c7c7ce27280ab60141d25a214eff420fce429a614e412120eb5830bbcc15844"
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
