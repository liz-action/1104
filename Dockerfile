FROM node:22-alpine
WORKDIR /app
COPY myapp/package*.json ./
RUN npm install
COPY myapp/ ./
EXPOSE 3000
CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0", "--port", "80"]