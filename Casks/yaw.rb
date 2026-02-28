cask "yaw" do
  version "0.9.70"
  sha256 "a8b9f35e25c54bc9b12a7add5eb8ba409815e284454138340c25a9d25a31e7a5"

  url "https://yaw.sh/downloads/yaw-darwin-arm64-#{version}.zip"
  name "yaw"
  desc "A modern terminal with built-in connection management and AI assistance"
  homepage "https://yaw.sh"

  app "yaw.app"

  zap trash: [
    "~/Library/Application Support/yaw",
    "~/Library/Preferences/com.yaw.app.plist",
  ]
end
