cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.3"

  if Hardware::CPU.arm?
    sha256 "24c5e065d57e67bef295ef4fe299bf2f1d7f1000f8c0cc63a05c45e8d20f55ea"
  else
    sha256 "8ece6eb4f04c1ffee7e8c4d14d2554f6164d8ccb2b3e5aba4e1225d59626acaf"
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
