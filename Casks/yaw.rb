cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.146"

  if Hardware::CPU.arm?
    sha256 "309769cbb7df37ab9390c6e8e0481ca93b4929dbac53bc3e97fcfa367fd3fb0e"
  else
    sha256 "465ccba8737b3c06d474e18c5db1eed59cc153cfbf994d2872efddc84dbfead2"
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
