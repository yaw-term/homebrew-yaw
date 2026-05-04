cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.15"

  if Hardware::CPU.arm?
    sha256 "16b8e63752a0b23c58fe5a269bcc936f1cee2a404ba4afbebdf701d435896ef5"
  else
    sha256 "999e960ea2ccf4caad90fe42f831b4d8b365008eb85c6633ed44b6681127c6a7"
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
