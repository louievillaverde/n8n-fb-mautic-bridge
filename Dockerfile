FROM n8nio/n8n:latest

# Enable basic auth for your n8n instance
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=n8nMauticAutomation

# Render automatically sets PORT
ENV N8N_PORT=$PORT
ENV N8N_HOST=n8n-fb-mautic-bridge.onrender.com
ENV WEBHOOK_URL=https://n8n-fb-mautic-bridge.onrender.com/

EXPOSE $PORT

# Start n8n in tunnel mode for Render compatibility
CMD ["n8n", "start", "--tunnel"]
