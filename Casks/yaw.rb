cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.22"

  if Hardware::CPU.arm?
    sha256 "a89df8bcd7b80bd6f2bdd8065d68cdeee420b1216c77884980f41d442d34b399"
  else
    sha256 "f45bb3f3adf734d8e8858a0f3a8fa5660e79fc0ab28ca14a412b55087aaf33fa"
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
