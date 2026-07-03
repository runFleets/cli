#!/usr/bin/env node
// Thin entry point: the MCP server itself lives in the `fleets` package
// (single source of truth, shared with the CLI). This package exists so
// `npx fleets-mcp` resolves to a package whose default binary is the server.
import "fleets/dist/mcp.js";
