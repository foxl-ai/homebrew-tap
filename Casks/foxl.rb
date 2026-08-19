cask "foxl" do
  version "0.6.6"
  sha256 "77dab2bade4cf5680d4def164db8acbd7647caf79c939627227cd8de4ad8a076"

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
