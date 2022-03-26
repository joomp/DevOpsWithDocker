FROM golang:1.16-alpine as build-stage

WORKDIR /src/
COPY . .
RUN CGO_ENABLED=0 go build -o /bin/app

FROM scratch
COPY --from=build-stage /bin/app /bin/app

ENTRYPOINT [ "/bin/app" ]
