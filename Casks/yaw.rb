cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.7"

  if Hardware::CPU.arm?
    sha256 "47b7f420521085914d44aa55d7607524519ccc9dae01c78eba9dbc6d6f4734bd"
  else
    sha256 "f6831f01549336dd0ab123caf919f60b4e5818a9734be215cc36c17c07c3486f"
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
