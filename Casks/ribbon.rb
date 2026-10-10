cask "ribbon" do
  version "3.7"
  sha256 "cd96229ca6822db3a5ef4955154c17ea247253f1b8307d46f3438f639613cf70"

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
