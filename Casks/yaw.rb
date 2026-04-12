cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.610"

  if Hardware::CPU.arm?
    sha256 "63cb7a461ffc5984cabb72fbd0f884343f9d5455b0c4ceafbda02ab8e0d69728"
  else
    sha256 "92dc29d7f862243c9f10f40e8a66b02dcccb7fccd94ea2da246df06db61416c7"
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
