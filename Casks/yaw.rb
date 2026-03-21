cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.110"

  if Hardware::CPU.arm?
    sha256 "111d92f8c91d52bc80c2bce09051cac1722fa90756a4563d37655baf7f299fc5"
  else
    sha256 "0227ba16bc1b9427c510d1b3a2bcccba844367fd7149273faae526489e6ce4ec"
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
