# fleets-mcp

MCP server for [Fleets](https://fleets.run) — pull live multi-site analytics
(GA4, Google Search Console, Cloudflare edge, PageSpeed, insights, change log)
into any MCP client as tools.

This is a thin launcher; the server implementation ships in the
[`fleets`](https://www.npmjs.com/package/fleets) package (same one that provides
the `fleets` CLI), so the CLI and MCP server share one API layer and one login.

## Use

Authenticate once with the CLI (writes `~/.fleets/config.json`):

```bash
npm install -g fleets
fleets login
```

…or set `FLEETS_TOKEN=fl_...` in the server's environment (mint a token at
`https://fleets.run/app/account?tab=cli`).

Then add it to your MCP client:

```json
{
  "mcpServers": {
    "fleets": {
      "command": "npx",
      "args": ["-y", "fleets-mcp"]
    }
  }
}
```

Claude Code:

```bash
claude mcp add fleets -- npx -y fleets-mcp
```

## Tools

`list_sites` · `stats` · `sources` · `campaigns` · `referrals` · `landers` ·
`events` · `users` · `devices` · `demographics` · `funnel` · `seo` · `edge` ·
`speed` · `insights` · `ask` · `log_change` · `recall`

All read-only except `log_change`. See the
[main README](https://github.com/runFleets/cli#mcp-server) for details.
