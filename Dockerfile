from alpine:latest AS builder
RUN apk add npm
WORKDIR /app
COPY ./frontend/ .
RUN npm install 
RUN npm run build
RUN ls

from alpine:latest
RUN apk add npm
RUN npm install -g serve
WORKDIR /app
# copying only build artifacts
COPY --from=builder /app/build ./
ENTRYPOINT [ "serve", "-s", "./" ]

