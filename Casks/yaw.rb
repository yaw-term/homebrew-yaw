cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.27"

  if Hardware::CPU.arm?
    sha256 "5f3ed61e4e89e35ac01a25eac6fe1a1da305e2229f37c8b159b2103d7f19076b"
  else
    sha256 "f385f24ad793a3feffa13e4b1e05969413c8ee17468f43fe602b917d79e9dcc5"
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
