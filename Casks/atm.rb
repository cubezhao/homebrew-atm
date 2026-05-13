cask "atm" do
  version "1.9.20"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "b18145bebfbd687167b6abc3a597ffb051a0e7ff2a799d7e33891502662c0de4",
         intel: "3ff0f9fad74d8990d354992e88cbc7a47391257c138ac47cb0a03ef635a6a5cf"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
