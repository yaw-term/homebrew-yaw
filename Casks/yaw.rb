cask "yaw" do
  arch arm: "arm64", intel: "x64"
  version "1.3.15"

  if Hardware::CPU.arm?
    sha256 "1380ee56f13d40aef3daeb21123872eb481d89952ab849358c7b0fabf04b3b77"
  else
    sha256 "55da04a6c7dd20f5cb67c6a43b2d6995b9441fa83e975d3b8fa1e59c4fe7f9c7"
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
