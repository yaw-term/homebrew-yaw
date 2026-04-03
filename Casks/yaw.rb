cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.140"

  if Hardware::CPU.arm?
    sha256 "9192c4aaf833945f1c88914f2794da0e7dffca5b7cda41e442eb9a2cbae775f8"
  else
    sha256 "6fd4656178dcddc141cfc168fbbf3d213ad3032f8e6e8fecf1cdbb313dc0989c"
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
