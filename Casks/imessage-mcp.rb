cask "imessage-mcp" do
  version "0.2.3"
  sha256 "c7ec7044c535c633ba5bf42a3edb2d3493e4b93f320b4aff8c0319837e0024cd"

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
