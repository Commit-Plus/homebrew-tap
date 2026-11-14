cask "commit-plus" do
  version "1.1.26"
  sha256 "e345ffdb5867c70dcef202b41bd7d3c589b89cf76dde7704457f31459bfd6bb2"

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
