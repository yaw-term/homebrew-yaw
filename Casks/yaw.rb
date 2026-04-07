cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.148"

  if Hardware::CPU.arm?
    sha256 "7083cb5646a283374c4404843621ae7cfc6e5098cf3ff1e030f1338fe78ca029"
  else
    sha256 "a6be3206a65c9f4ae30334da05459fa6a2ccd6151d1761fb2bc884fb023288c6"
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
