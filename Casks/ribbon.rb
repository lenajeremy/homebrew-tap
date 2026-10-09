cask "ribbon" do
  version "3.3"
  sha256 "0b814da64cdd35c9b4066089b4df3ee017a99c6d265134b98ab9bf04cd688b35"

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
