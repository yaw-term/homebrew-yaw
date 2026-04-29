cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.27"

  if Hardware::CPU.arm?
    sha256 "55506bb23de1a6d18b04fe5a566f2cb32c8f78b0633816a821e7d95d71b1de55"
  else
    sha256 "b0e9f066512f3a1e7d7b7fd80428db9d9a35eecd57837344de03e4e99fed08ea"
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
