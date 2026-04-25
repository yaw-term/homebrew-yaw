cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.17"

  if Hardware::CPU.arm?
    sha256 "2b16ff80b6ccd8c83a29844c8adf2f26e606abe82f82ac44134d4531ce002338"
  else
    sha256 "2c978ef2fc6f040091520aca2d2314f3e0fe5987ed0ddaff77bac06204f9acc1"
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
