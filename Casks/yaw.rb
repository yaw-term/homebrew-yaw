cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.128"

  if Hardware::CPU.arm?
    sha256 "c6233ddc65badca3391578dc53abc0484a293044f083ab7ef127aaa2268516e8"
  else
    sha256 "8d6e7d495eb4ad05023f19019489b9fad61a88319ff1472dfe4fb41477b2e94f"
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
