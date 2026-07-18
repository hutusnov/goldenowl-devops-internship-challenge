FROM node:24-alpine
ENV NODE_ENV=production
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY index.js ./
COPY routes ./routes
COPY server ./server

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- --spider http://localhost:3000/ || exit 1

USER node
CMD ["node", "index.js"]
