cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.23"

  if Hardware::CPU.arm?
    sha256 "43b7f7b6ac91770c6e36511086581c5ef2328440569e8fe0fdfcd3ca6b8614f0"
  else
    sha256 "17d0770ca6d8034360cd5f00d274d719424e9cee39f52dd4102faea8bd7f15c5"
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
