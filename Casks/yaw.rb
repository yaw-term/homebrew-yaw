cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.27"

  if Hardware::CPU.arm?
    sha256 "49a65e4ab02c8fd96789b92a36bd6e5df03795f43e77cfd9f0ac16821016c581"
  else
    sha256 "d27a3020e64b70e3420ce00ebaea17cb035c85d077083dcda488c9f9b1bb5d2e"
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
