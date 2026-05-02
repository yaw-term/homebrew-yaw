cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.8"

  if Hardware::CPU.arm?
    sha256 "8e40eab9a3ce442cd32ed950585fc85fa3386be964fe8439d586ba6d4c9cc4c5"
  else
    sha256 "2a2f5a2d2b7ae0c4a51ae0f156ddf04facde46c550ab7242cdc76abd4f2315cb"
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
