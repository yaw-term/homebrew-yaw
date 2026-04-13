cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.700"

  if Hardware::CPU.arm?
    sha256 "3342a9d94e7f10f88e87d97860305459b72f3517b8a151df338da3fa917991db"
  else
    sha256 "7ea7ba2922a3e20a5f8b710a1f7809d0fc8e330ab1bb62a89af26f06ce5e8f00"
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
