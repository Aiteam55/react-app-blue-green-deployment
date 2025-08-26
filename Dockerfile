FROM node:22-alpine AS build

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

RUN npm run build

# Use nginx to serve the static files
FROM nginx:alpine

# Copy static assets from builder stage
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]