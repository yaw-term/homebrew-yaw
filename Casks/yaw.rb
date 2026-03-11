cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.96"

  if Hardware::CPU.arm?
    sha256 "0059a0d896511442e8a212c8c2d63a5153ecae101f0d9019e3fd1ad798761ba4"
  else
    sha256 "59d011aaf3c78bce21222bda3584be754ad2a1cf601edca62018e6f6885fcb7b"
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
