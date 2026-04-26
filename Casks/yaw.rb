cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.21"

  if Hardware::CPU.arm?
    sha256 "acca340e9aa620966529940fed25f5d9f59ac552c642eca09c905a619d4a9b69"
  else
    sha256 "d1305e5bb744c3096e0416dee88b07e9fc45121f21019a366abcbdd71ddc9e9d"
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
