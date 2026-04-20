cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.930"

  if Hardware::CPU.arm?
    sha256 "81a6dd9de8d2652ee667d83f19848dc53ce8c08bbdb651d02766abbe23f26698"
  else
    sha256 "db4f3d5c884b4e20171b85564a0661818da0c1bbfd1c40df48f685a9eb2c7a39"
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
