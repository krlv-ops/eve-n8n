#!/bin/sh
set -e

# Ensure required folders exist
mkdir -p /home/node/.n8n
export N8N_USER_FOLDER=/home/node/.n8n

# Default port for n8n
export N8N_PORT=${N8N_PORT:-5678}
export N8N_PROTOCOL=http

# Start n8n
exec n8n start
