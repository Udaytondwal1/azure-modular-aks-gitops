# Stage 1: Install dependencies
FROM node:22-slim AS builder

WORKDIR /app

COPY package*.json ./

RUN npm ci --omit=dev


# Stage 2: Minimal, secure runtime
FROM node:22-slim

WORKDIR /app

# Copy only production dependencies
COPY --from=builder /app/node_modules ./node_modules

# Copy application
COPY server.js .
COPY package*.json ./

# Create non-root user
USER node

EXPOSE 8000

CMD ["node", "server.js"]