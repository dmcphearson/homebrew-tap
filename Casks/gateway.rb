cask "gateway" do
  version "1.0.4"
  sha256 "ea69210f3a2fe72a6a831cab784f6a04557d1e22264401f7a3f5432cb8bcd6b0"

  url "https://github.com/dmcphearson/gateway/releases/download/v#{version}/Gateway_v#{version}.zip"
  name "Gateway"
  desc "Menu bar app that keeps AWS SSO sessions and tokens fresh"
  homepage "https://github.com/dmcphearson/gateway"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Gateway.app"

  uninstall quit: "me.mcphearson.aws-cli-gateway"

  zap trash: [
    "~/Library/Application Support/AWS CLI Gateway",
    "~/Library/Application Support/AWS SSO Gateway",
    "~/Library/Preferences/me.mcphearson.aws-cli-gateway.plist",
  ]

  caveats <<~EOS
    Install the `gateway` terminal command from the menu bar:
    Tools & Settings > Install CLI Tools.
  EOS
end
