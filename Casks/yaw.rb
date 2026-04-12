cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.600"

  if Hardware::CPU.arm?
    sha256 "d7390e8073ad76559e035513b74c2188600d5ef886bee90c45ae7ba1077c9063"
  else
    sha256 "ff0c1c1e0ef093de7dc6e4219e057843c246e5b80bea51855c4e71f328321d48"
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
