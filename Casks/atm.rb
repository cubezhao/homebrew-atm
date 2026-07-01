cask "atm" do
  version "2.0.0"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "af747dc7f017bd5660d83d4f1cc6b12206201313b37f674ea618c586324f0e2f",
         intel: "aab88540883c1f0a46018a7b530153bf8d2b9ad62f4a7e17dec46b035eb5ba13"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
