cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.560"

  if Hardware::CPU.arm?
    sha256 "ee108547ac912906797f144c6e144a71a0267a8cf7c49b12eda696ab81e4d0d5"
  else
    sha256 "df4a726e5c2c65369dc58eea374daa03c673fb83cc3a28e8e603378e9142af46"
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
