cask "ribbon" do
  version "3.14"
  sha256 "76d90a33861f0718c09b117d84285aa0c850d8e9959600e241d46333daecb9a7"

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
