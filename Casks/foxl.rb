cask "foxl" do
  version "0.6.14"
  sha256 "ebc5e3d363248f19f1ab05338a13b2ea7ef490e5ce021ff485bc4a57fa2b6571"

  url "https://github.com/foxl-ai/foxl/releases/download/v#{version}/Foxl-latest-universal.dmg",
      verified: "github.com/foxl-ai/foxl/"
  name "Foxl"
  desc "Personal AI agent for files, browsers, coding, and scheduled work"
  homepage "https://foxl.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Foxl.app"

  zap trash: [
    "~/.foxl",
    "~/Library/Application Support/Foxl",
    "~/Library/Caches/com.foxl.desktop",
    "~/Library/Caches/com.foxl.desktop.ShipIt",
    "~/Library/HTTPStorages/com.foxl.desktop",
    "~/Library/Preferences/com.foxl.desktop.plist",
    "~/Library/Saved Application State/com.foxl.desktop.savedState",
  ]
end
