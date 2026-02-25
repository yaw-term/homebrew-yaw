cask "yaw" do
  version "0.9.52"
  sha256 "ac6651d18bbe0381fbef6f2e194cebd7cced21f1bceaed0c4f7c86e99eff0b7a"

  url "https://yaw.sh/downloads/yaw-darwin-x64-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
