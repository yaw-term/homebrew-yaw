cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.17"

  if Hardware::CPU.arm?
    sha256 "95ffe54b0853708f8f777c6de2cda9b9342a1b8dfdbb33baa785667aac3e55ae"
  else
    sha256 "89f7b3028f27990becffa3aaaf0213bed0e5ddf15d2533be6fd4c7c8b47ebeb6"
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
