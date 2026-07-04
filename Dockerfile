# Dockerfile for the Fleets MCP server (stdio).
# Used by directory indexers (e.g. Glama) to start the server and introspect
# its tools. The server speaks MCP over stdio; auth is via the FLEETS_TOKEN
# env var (or a mounted ~/.fleets/config.json). Introspection (tools/list)
# works without a token — only tool *calls* require one.
FROM node:22-slim

# Install the published launcher package globally so `fleets-mcp` is on PATH.
# Pinned to a minor range so rebuilds pick up patches but not breaking changes.
RUN npm install -g fleets-mcp@^0.2

# stdio transport: no ports to expose. The server reads JSON-RPC on stdin
# and writes on stdout; logs go to stderr.
ENTRYPOINT ["fleets-mcp"]
