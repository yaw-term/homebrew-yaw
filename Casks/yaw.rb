cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.29"

  if Hardware::CPU.arm?
    sha256 "4de58e356de4b5f497420210b9765fc837c3b0655fa549ebc1a2fcb6008270a6"
  else
    sha256 "c157c87ecef0eb16ad6eb12459a07d60590b812b6266cb2ffc67ea33a72524b8"
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
