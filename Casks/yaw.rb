cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.400"

  if Hardware::CPU.arm?
    sha256 "5ca714bb5b54674f5bfd9152b0f1b6ffcf9baab709fcc1aa2cd4e9ca1a3d4725"
  else
    sha256 "cbfe86830ee50661d0f180adf0c8189a9fc6b7aafe97c3b54fad29174966527a"
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
