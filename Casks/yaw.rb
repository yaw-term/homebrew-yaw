cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.6.0"

  if Hardware::CPU.arm?
    sha256 "02136960df455a63fb14ad6675da96121ac1ec3b28da1fa50f712819bd9ea96b"
  else
    sha256 "faf4c9515f0ad18762e24aa92cfc1c8b15cefdd4bb661cffedb6947aa5252a02"
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
