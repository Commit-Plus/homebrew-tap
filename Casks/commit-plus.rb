cask "commit-plus" do
  version "1.1.24"
  sha256 "ff5ed0f8ac4ce73ddec032c9e0c97247e30da599800e379076dc16a8fca0f57f"

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
