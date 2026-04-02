cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.132"

  if Hardware::CPU.arm?
    sha256 "dc4c63f92989a4e21756d4cff835a7fb2785be11af1e81bdc7651a6fc76a2100"
  else
    sha256 "3d9e306268810ccd17fd82579ae3f34675967704e33f3923106f527ce467b8b1"
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
