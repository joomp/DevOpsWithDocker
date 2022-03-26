FROM openjdk:8u322-jdk as builder
WORKDIR /usr/src/app
COPY . .
RUN chmod +x mvnw && ./mvnw package

FROM openjdk:8-jre-alpine
EXPOSE $PORT
WORKDIR /build/
COPY --from=builder /usr/src/app/target .

RUN adduser -D appuser && \
    chown appuser . 
USER appuser

CMD java -jar ./docker-example-1.1.3.jar --server.port=$PORT
