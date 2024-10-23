
FROM node:18-alpine

WORKDIR /build
COPY build/ .

# Install a simple HTTP server to serve the app
RUN npm install -g serve

# Expose port
EXPOSE 3004

# Serve the app on the specified port
CMD serve -s . -l tcp://0.0.0.0:3004
