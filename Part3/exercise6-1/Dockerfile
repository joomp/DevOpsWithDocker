FROM node:16.14-alpine as build-stage
WORKDIR /usr/src/app
EXPOSE 5000

COPY . .

RUN npm install && \
    npm run build 


FROM node:16.14-alpine
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/build/ ./build

RUN adduser -D appuser && \
    chown appuser . && \
    npm install -g serve

USER appuser

CMD serve -s -l 5000 build
