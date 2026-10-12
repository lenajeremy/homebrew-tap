cask "ribbon" do
  version "3.13"
  sha256 "64dd81603e315e1ee76bd746d7a8b159c2a61ddab820654f13cfc678b7e68c36"

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
