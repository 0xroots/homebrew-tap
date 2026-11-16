cask "imessage-mcp" do
  version "0.3.0"
  sha256 "894205e12e245520d1aade2d2f670ceee3143a5922210d835663ee9f59f478b0"

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
