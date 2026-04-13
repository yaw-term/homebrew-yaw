cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.710"

  if Hardware::CPU.arm?
    sha256 "4f2cd0ab68176a6b1bbe00b3271cfa3bd23e6476fdf4267412c87ce02f470a55"
  else
    sha256 "68ab14cfe6462e2aa8b1d092f8e9487ebfdc3ea3845ce6dc50c108cd3074084d"
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
