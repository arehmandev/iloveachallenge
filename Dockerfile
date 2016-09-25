# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD . /go/

RUN go install sainsburys

# Run the outyet command by default when the container starts.
ENTRYPOINT /go/bin/sainsburys

# Document that the service listens on port 8080.
EXPOSE 8484
