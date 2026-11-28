cask "commit-plus" do
  version "1.1.28"
  sha256 "bed35ab21e7ebdead749a9a3544ecd4ad4a70aeebaa4c7af6d9c7c082d1b495d"

  url "https://github.com/Commit-Plus/commit-plus/releases/download/v#{version}/Commit+-#{version}-arm64.dmg"
  name "Commit+"
  desc "Native Git client"
  homepage "https://github.com/Commit-Plus/commit-plus"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Commit+.app"

  zap trash: [
    "~/Library/Application Support/Commit+",
    "~/Library/Caches/dev.thanhtran.macgit",
    "~/Library/HTTPStorages/dev.thanhtran.macgit",
    "~/Library/HTTPStorages/dev.thanhtran.macgit.binarycookies",
    "~/Library/Preferences/dev.thanhtran.macgit.plist",
  ]
end
