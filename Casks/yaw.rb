cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.940"

  if Hardware::CPU.arm?
    sha256 "fb751e8acea6dc641a44ccf0c3369028b2479714cd95df1beb655792829c3ee0"
  else
    sha256 "ec7f472a08fe1f4d82ce1488eaa61b5831f3641c007a4da3e228df825e34418a"
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
