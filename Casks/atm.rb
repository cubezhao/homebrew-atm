cask "atm" do
  version "1.9.15"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "6af88908263a94ff62955987a12f3b81cdd8c6451b23ce5d95b326cf590cfdcc",
         intel: "a06c5dbe3125b1bf2b8848cfe6aacd284d5f6b9977f5b9433fa5fab5e3f7a375"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
