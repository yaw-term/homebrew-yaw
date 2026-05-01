cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.2"

  if Hardware::CPU.arm?
    sha256 "46cc509cbfeee6944d3ba40be4fb872b5fd30e1216d779c3db4cb4fe302481f4"
  else
    sha256 "5d845bfbe7d1820f4e833cffa31efdda3c4488a381a8b6304be2c08a4f58e63d"
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
