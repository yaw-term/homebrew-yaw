cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.5"

  if Hardware::CPU.arm?
    sha256 "9df049a03e6414498afbb7d7e89bbb126c5bbd455dd775f3d0258dc8534be96e"
  else
    sha256 "bc52fd2e6b2dfaaa2ec5d07099b0bab9d30254e137820c8a16c51e05d9da4e1b"
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
