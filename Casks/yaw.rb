cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.78"

  if Hardware::CPU.arm?
    sha256 "ced2a84786e9f94adc56e55197315903accac8dc124425bc640b1c8fd6b54d5a"
  else
    sha256 "c78febafc8fc5c4b9bb58fce6c65911efbcb7d999a792a0d27f839f7132e56e5"
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
