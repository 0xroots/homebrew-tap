cask "imessage-mcp" do
  version "0.4.0"
  sha256 "4040cf3d7852ba22b1e928aa6d7c5b9b16276cbd30c7de044c8ec679b3d96fc8"

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
