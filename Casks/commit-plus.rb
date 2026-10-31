cask "commit-plus" do
  version "1.1.23"
  sha256 "5cf6f182d8156b0e9a98def67144459d93c2e4aad4ded6b05e5e94f8e4744e33"

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
