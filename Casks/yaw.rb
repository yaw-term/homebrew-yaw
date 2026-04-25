cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.18"

  if Hardware::CPU.arm?
    sha256 "f92029516ac5722ceabf4d50610191d6e5ab4cdf8da4ec080f36d98d13f02a5d"
  else
    sha256 "187b6d05225233bb840fd077e5d56cee9a1a18d4177011f59df94936997b024e"
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
