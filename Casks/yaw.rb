cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.800"

  if Hardware::CPU.arm?
    sha256 "400c93eb0893a936e80dd4a9a7b68f83a00a8da8934f0ebfd5a370b0f6944c15"
  else
    sha256 "c8db78a49f1812f6dbd071fe26a43dfc44b60060b52c612113089e920b6f1152"
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
