cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.106"

  if Hardware::CPU.arm?
    sha256 "40d95b8952fded1c8a9954e26a207fe69659bd0ff512e723ee28d0ec89272414"
  else
    sha256 "15ced6159cd9f11ec4f9b16ebb334e068bdee2f061e2d9643f56f2cf60f41cca"
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
