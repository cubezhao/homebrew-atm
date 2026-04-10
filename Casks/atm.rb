cask "atm" do
  version "1.9.14"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "0dc5ec660f2193cc85ed704d2ce9d50e863a217fec6e5776bdf4baa7ab16a033",
         intel: "1955bdf5f9d8b1ef88544eb593138498bec195e5b391b89ef6a6d80be45de5ef"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
