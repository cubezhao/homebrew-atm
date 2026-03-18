cask "atm" do
  version "1.9.11"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "aa561499032aa9ad381e2cc9936b2f4fb8f7dc2f7b730e1d54a23ae94e0ce9ac",
         intel: "35454aab05575c648b8204cc4c5e12d4edcab778ce978515e9bb792bac284859"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
