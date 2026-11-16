---
name: mcp-server-grafana
description: Query and manage Grafana (dashboards, Prometheus/Loki datasources, alert rules, incidents, annotations) from an AI assistant. Use for monitoring questions and dashboard work.
---

Start with the search and datasource tools to find the dashboard or datasource,
then query it. The server is read-only when `GRAFANA_READ_ONLY=true` (default
under mcprack): create/update tools are then not available. Dashboard
updates, alert-rule changes and annotations modify Grafana - confirm with the
user first.
