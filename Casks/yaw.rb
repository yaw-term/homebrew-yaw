cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.900"

  if Hardware::CPU.arm?
    sha256 "abe1eb6b1eb607a4c6617901cf4a3d41cba1052a95fc3333265c3e8ed504ace2"
  else
    sha256 "bbba21a72ae818555268b1fa7460b8b1d74770be6c9ddc2fcda84f2cb94fad3e"
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
