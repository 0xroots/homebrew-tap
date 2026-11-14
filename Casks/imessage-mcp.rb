cask "imessage-mcp" do
  version "0.2.2"
  sha256 "61668e1959a8bd6e9de8d9b156dd29c670743626ae59e2682a51846c850d4cdb"

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
