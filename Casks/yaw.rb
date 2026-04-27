cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.4.0"

  if Hardware::CPU.arm?
    sha256 "575c3f65164574a4568297acc56e4ef3cad9c292376b67d95085c2f68f3ddadd"
  else
    sha256 "7f0b956d67250b764037088f53f602816fdf9248a2ca119c9efe50751cfa3f28"
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
