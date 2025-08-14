# Small, stable Node base
FROM node:18-bullseye

# Create app dir
WORKDIR /app

# Install n8n
RUN npm install -g n8n@1.61.4

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# n8n stores data here
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

USER node
ENV N8N_PORT=5678
EXPOSE 5678

ENTRYPOINT ["/entrypoint.sh"]
