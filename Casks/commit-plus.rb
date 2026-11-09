cask "commit-plus" do
  version "1.1.25"
  sha256 "759eefc25356c205608f37121059e7810872f578eee650744fa6f32aaf40569b"

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
