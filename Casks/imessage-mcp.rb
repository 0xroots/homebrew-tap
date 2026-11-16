cask "imessage-mcp" do
  version "0.2.4"
  sha256 "9076a0aa67a2703629a3c0136cd30791d908b3616afe89d39e198373fcf76503"

  url "https://github.com/0xroots/imessage-mcp/releases/download/v#{version}/iMessageMCP-#{version}.dmg"
  name "iMessage MCP"
  desc "Read, search and send iMessage from AI tools over MCP, without Full Disk Access"
  homepage "https://0xroots.github.io/imessage-mcp/"

  depends_on macos: ">= :ventura"

  app "iMessageMCP.app"

  zap trash: [
    "~/Library/Containers/org.messageslocal.app",
  ]
end
