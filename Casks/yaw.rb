cask "yaw" do
  version "0.9.77"
  sha256 "62d1285e018d187d76e6d38323da955086ce1c5dc94a290bd0c3999925b82b39"

  url "https://yaw.sh/downloads/yaw-darwin-arm64-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
