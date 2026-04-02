cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.135"

  if Hardware::CPU.arm?
    sha256 "ac542c8413248db190ba77bf342d5950d5f8c550d5db1c7439a72ea140b9ba07"
  else
    sha256 "9c493286ed79793a123a5f6253b8858f89c85cfa16bad255f1b2cf8c68f4f224"
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
