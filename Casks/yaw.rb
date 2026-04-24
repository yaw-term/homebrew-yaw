cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.13"

  if Hardware::CPU.arm?
    sha256 "0d277f2ac38cb53f8ddc1aeea1485bd3a613286762687c16db2b2914ff984ee5"
  else
    sha256 "f014719273a0c78c58f64c35823bb0946bf99029c9efac58c937c5cc2ca6a73f"
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
