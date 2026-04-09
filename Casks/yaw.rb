cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.550"

  if Hardware::CPU.arm?
    sha256 "4449082d78047854b98c7ce85ecb4e378c4d2f9e291aa2437606ae52f454ab43"
  else
    sha256 "c458bbc1cfdd159eef02425596b60ff8add57408c4599fee319572057740a0d4"
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
