FROM golang:1.22-alpine 

WORKDIR /app

COPY . .
RUN go mod download
RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux go build -o /parcel

CMD ["/parcel"]



