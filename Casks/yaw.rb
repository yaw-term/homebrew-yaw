cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.29"

  if Hardware::CPU.arm?
    sha256 "8f62dd9bee0835804e193c6d2f823390efeb542d90f6456ad67273ad66eef959"
  else
    sha256 "6e118aaa0c26d636259432f23f5af2ee9ead257a8a16f87338acd20bbd69ca4c"
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
