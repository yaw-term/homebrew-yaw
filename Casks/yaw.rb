cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.124"

  if Hardware::CPU.arm?
    sha256 "cd9bfe79a7bdf3429688ee0fe328b91ddd8883dea72c7620e39eb11480ab5091"
  else
    sha256 "3a8a10a942d2b2e7c4a2ede8e6bd3f69e5f9d03ba80cf6be49d5c83a0c82ed8b"
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
