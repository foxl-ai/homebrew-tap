cask "foxl" do
  version "0.7.28"
  sha256 "54ce6d1babeabed72d608a3100e559b1e7f745b37fe6ec6c95bbb37290b19ccc"

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
  # MUST TRACK electron-builder-production.yml's mac.minimumSystemVersion. Electron 44
  # raised the floor to 13 (Ventura), and this line said :monterey - so brew passed its
  # dependency check on macOS 12, installed Foxl.app, and the app then refused to launch
  # (LSMinimumSystemVersion 13.0) with the failure landing at the one step brew cannot
  # report on. check-homebrew-tap-gate.mjs has no opinion about depends_on, so the only
  # thing keeping these two in step is this comment.
  depends_on macos: :ventura

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
