FROM n8nio/n8n:latest

# Enable basic auth for your n8n instance
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=n8nMauticAutomation

# Set default port
ENV N8N_PORT=5678

# Render expects the process to start like this
CMD ["n8n", "start", "--tunnel"]
