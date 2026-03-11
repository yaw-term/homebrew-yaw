cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.99"

  if Hardware::CPU.arm?
    sha256 "841e4b802b70baad9e67c5b0a2c6392cc4bc4f43b0b77f20d64ecdca5d1b0334"
  else
    sha256 "175cb1bba82d8f4332f92234694652954ed1b0dfbbb5aa9679927226ec335304"
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
