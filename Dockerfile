# Use an official Go runtime as a parent image
FROM golang:1.17-alpine

# Set the working directory to the app directory
WORKDIR /blog

# Copy the current directory contents into the container at /app
COPY . /blogclien

# Build the Go app
RUN go run main.go

# Expose port 8080 for the application
EXPOSE 8080

# Run the command to start the application
CMD ["./"]