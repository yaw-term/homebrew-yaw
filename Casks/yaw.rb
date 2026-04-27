cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.1"

  if Hardware::CPU.arm?
    sha256 "849b30999b7f49b2cbce9619bbe2a8d97aebe02330805fa2710c35703e6d9f1a"
  else
    sha256 "5b8dec1a7193f70f3f36c153e641e0ee096efbf757cd0a040de704e74d3ddd95"
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
