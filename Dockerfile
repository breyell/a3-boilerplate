FROM node:12
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
ENV NODE_ENV production
ENV APOS_RELEASE_ID 55
RUN npm run build
CMD ["npm", "start"]
