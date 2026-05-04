cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.5.19"

  if Hardware::CPU.arm?
    sha256 "24f51750be38e92012a2ee588d490390a0b685b12ee0ebd3af1f575867da9bf6"
  else
    sha256 "a90b6f088723fdd19dcfe09bfe90d2252a53b91bbfbace333dfbb46b53c28d49"
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
