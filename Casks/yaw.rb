cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.89"

  if Hardware::CPU.arm?
    sha256 "27ae994b604722f5c4d6b6d408b6428d223ca1795ae5ebf4b891320f39b90fa1"
  else
    sha256 "bc44a4c1163890a9e845427f613dd6c0044fd9527d9da3abc9df460c2f9fc7fd"
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
