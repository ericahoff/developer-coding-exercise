FROM node:20-alpine AS build
WORKDIR /app
COPY . .
RUN npm install && npm run build
FROM node:20-alpine
RUN npm install
WORKDIR /app
COPY --from=build /app/build ./build
EXPOSE 3000
CMD ["npm", "start"]
