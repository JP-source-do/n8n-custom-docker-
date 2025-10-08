FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install PDF and DOCX parsing libraries globally
RUN npm install -g pdf-parse mammoth

# Switch back to node user
USER node

# Expose the port
EXPOSE 5678
