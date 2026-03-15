cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.101"

  if Hardware::CPU.arm?
    sha256 "226e44d6badaf670c5ed8ab01a9c20a9f4a3b02e8e177de20423282b30bdbd93"
  else
    sha256 "1c06b3e41075aad1f072f7412800f134f7c1735d0c43e5ea11bc5e34d41bfc64"
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
