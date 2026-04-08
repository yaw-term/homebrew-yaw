cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "0.9.200"

  if Hardware::CPU.arm?
    sha256 "e7085e0f4c89aba525c223a00a838a3b8c798f5ff995a66806d58a193fb9b381"
  else
    sha256 "d61fc875f64982d6d0eb43290ec9e3050a21e2a253a0227f36a06746acba7275"
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
