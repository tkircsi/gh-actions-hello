FROM golang:1.16-alpine
WORKDIR /src
COPY . .
RUN go clean --modcache
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /app/main .
ENTRYPOINT [ "/app/main" ]