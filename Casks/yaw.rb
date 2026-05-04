cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.13"

  if Hardware::CPU.arm?
    sha256 "97d4aec7d4398398690ef01df255186fb26f05c2c8091b1412111a787638c0bf"
  else
    sha256 "93b47f6293dcdb5a872b3b6104433c63eb65749bf6fcf3d9a1f6af405f209a0e"
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
