cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.850"

  if Hardware::CPU.arm?
    sha256 "8f8ff18c72e943c5a529611a21dc175d953094840c9e1355c3ba62ff3c544fb3"
  else
    sha256 "6c9be827a525f54f15b05c075d2a5b9d5c6143cd92fa761638fdb3685635e472"
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
