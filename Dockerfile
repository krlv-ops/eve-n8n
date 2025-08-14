# Use official n8n image so we don't chase npm versions
FROM n8nio/n8n:latest

# Render maps traffic to $PORT. n8n defaults to 5678.
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

EXPOSE 5678
