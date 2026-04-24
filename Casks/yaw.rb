cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.14"

  if Hardware::CPU.arm?
    sha256 "ae51e5c8a7f1f5354032b0f46c0088c77335e198b61eee3fcc0d4a52d55f7f4d"
  else
    sha256 "782a8ca24c932f442632c5742cd39e6fccf8bc3041041fd8435df0b5dbf82e9d"
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
