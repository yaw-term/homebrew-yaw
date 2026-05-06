cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.26"

  if Hardware::CPU.arm?
    sha256 "5cf30cbe31a6f6512d8f8f1b232fa856e75b32fc94d648e37bb015880e8712b7"
  else
    sha256 "bdf519b6e52625772b12a558ec9d6a0483caa6a34f3cf3ab6583f26b2819b5d6"
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
