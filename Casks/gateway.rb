cask "gateway" do
  version "1.0.5"
  sha256 "5b7d7869f773354559936d62da11f09523cddaa1160abc4cd2c56bd4cb573d7d"

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
