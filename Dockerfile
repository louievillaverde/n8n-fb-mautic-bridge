# Use the official n8n image
FROM n8nio/n8n:latest

# Enable basic authentication
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=n8nMauticAutomation

# Use Render's assigned port
ENV N8N_PORT=${PORT}
ENV WEBHOOK_URL=https://${RENDER_EXTERNAL_HOSTNAME}/
ENV N8N_EDITOR_BASE_URL=https://${RENDER_EXTERNAL_HOSTNAME}/

# Expose the Render port
EXPOSE ${PORT}

# Start n8n correctly
CMD ["n8n", "start", "--tunnel"]
