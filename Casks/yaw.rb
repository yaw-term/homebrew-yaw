cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.16"

  if Hardware::CPU.arm?
    sha256 "be9830067677b827ee271727377e61ce0c2ab7f43f6f92db8c9ea694e58fe166"
  else
    sha256 "20b7891a5c8cceb340e2dafaaa1d5b513edc57003830a3df02bed570540222a8"
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
