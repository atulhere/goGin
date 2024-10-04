#
FROM golang:1.23

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy everything from the current directory to /app inside the container
COPY . .

# Download and install dependencies (if any)
RUN go mod tidy

# Build the Go app
RUN go build -o main .


# Expose port 8800 to the outside world
EXPOSE 8080

# Default commands 
CMD ["/app/main"]

