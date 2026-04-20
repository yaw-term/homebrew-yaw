cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.950"

  if Hardware::CPU.arm?
    sha256 "6ec524f8b26ac1c53446afe3522d22d4d7922808468c1ea10fd8d7945f0ea4e4"
  else
    sha256 "deedfe720a7ece5b17d037b58c97d3a1d56b27d5f137d3147c9aeff00da00ce0"
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
