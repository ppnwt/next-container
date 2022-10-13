# FROM node:16

# RUN mkdir -p /app

# WORKDIR /app

# COPY . .

# RUN npm install

# EXPOSE 3000

# CMD ["npm", "run", "start"]


FROM node:16-alpine as dependencies
WORKDIR /next-container
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

FROM node:16-alpine as builder
WORKDIR /next-container
COPY . .
COPY --from=dependencies /next-container/node_modules ./node_modules
RUN yarn build

FROM node:16 as runner
WORKDIR /next-container
ENV NODE_ENV production
# If you are using a custom next.config.js file, uncomment this line.
# COPY --from=builder /next-container/next.config.js ./
COPY --from=builder /next-container/public ./public
COPY --from=builder /next-container/.next ./.next
COPY --from=builder /next-container/node_modules ./node_modules
COPY --from=builder /next-container/package.json ./package.json

EXPOSE 3000
CMD ["yarn", "start"]