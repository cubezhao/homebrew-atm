cask "atm" do
  version "1.9.16"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "5c9c880053408fc37a8a0b9758881300366b241a4ac3cbef82e303b4ea3e8ffb",
         intel: "6dbcdcee1522ba1e3bebf56e4bbc0d5232c3f1dc3b1d91eaad8be270664dc4b7"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
