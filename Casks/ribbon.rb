cask "ribbon" do
  version "3.5"
  sha256 "1e35c71d390b8725ac2af0f04353255687279fbdecc1a2ff32bb0462e8608a04"

  url "https://github.com/lenajeremy/ribbon/releases/download/v#{version}/Ribbon.dmg"
  name "Ribbon"
  desc "AI time tracker that records the apps and websites you use"
  homepage "https://ribbon-lake.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Ribbon.app"

  uninstall quit: "com.jeremiahlena.focusorb"

  zap trash: [
    "~/Library/Application Support/Ribbon",
    "~/Library/Caches/com.jeremiahlena.focusorb",
    "~/Library/HTTPStorages/com.jeremiahlena.focusorb",
    "~/Library/Logs/Ribbon.log",
    "~/Library/Preferences/com.jeremiahlena.focusorb.plist",
  ]
end
