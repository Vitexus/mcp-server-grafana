#!/bin/sh
# Launcher for the upstream grafana/mcp-grafana binary.
#  * GRAFANA_READ_ONLY=true starts it with --disable-write (no create/update tools).
#  * Upstream reports anonymous usage statistics to Grafana Labs unless disabled;
#    this launcher disables them by default. Set GRAFANA_USAGE_STATS=enabled to opt in.
GRAFANA_USAGE_STATS="${GRAFANA_USAGE_STATS:-disabled}"
export GRAFANA_USAGE_STATS
case "$(printf '%s' "${GRAFANA_READ_ONLY:-}" | tr '[:upper:]' '[:lower:]')" in
  1|true|yes|on) set -- --disable-write "$@" ;;
esac
exec /usr/lib/mcp-server-grafana/mcp-grafana "$@"
