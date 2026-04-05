cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.142"

  if Hardware::CPU.arm?
    sha256 "c61c89e7f34224a85b247764b9d03d9728eac6eccf4726e8c997583ff21370f6"
  else
    sha256 "7770119523da3980e15257d188cff9fc8ffeed3aa8057d8d8d0ede3f65a91745"
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
