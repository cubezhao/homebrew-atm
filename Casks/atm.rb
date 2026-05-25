cask "atm" do
  version "1.9.22"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "a43ab44e1f9cfcbaa79f340a642f0aacb34caf6df84cbc6743d63f4ce8c6e4c0",
         intel: "31452de5723b400a676f594e0a5c27e07fe150af52db8bd856b23ed0ce828009"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
