cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.921"

  if Hardware::CPU.arm?
    sha256 "b3bd3c6b573604d35b1e3e1eff44fcfa3f73990393dcdcc78db2a198f6ee5809"
  else
    sha256 "df79c79c25d8af1916da0544766cc96d24434e52ebdd13e2e8ff2a75c17230e9"
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
