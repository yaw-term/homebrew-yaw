cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.14"

  if Hardware::CPU.arm?
    sha256 "887aa737d7631fb045a7caecd611c7ad33e135fcef4d879e2e009f1769c2d2ed"
  else
    sha256 "bc5963338e1972059091896c2b708140863beb5ba0a075913899423d40600d65"
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
