cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.86"

  if Hardware::CPU.arm?
    sha256 "30bc6f25b40248e7cfe47ff1ca47436f86b6340c73c69b83f9d1589212791b4e"
  else
    sha256 "39936c34b857546f11b8c7f34289ac330a02821f8df4418686c8a0200bb33224"
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
