cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.4"

  if Hardware::CPU.arm?
    sha256 "6950ea7d1b1406e6a712b35d6cc0ac1dca382650896bbb8f69b4982b478c704f"
  else
    sha256 "322ee4dc8b7bb32766349497f6a8e35f7307dc250d61796d624a2b774627d5b0"
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
