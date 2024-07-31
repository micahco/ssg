#!/bin/sh

. ./.env

cleanup() {
    echo "Stopping the HTTP server..."
    kill $SERVER_PID
    wait $SERVER_PID 2 > /dev/null
    exit
}

trap cleanup INT TERM

python3 -m http.server 3000 -d "$BUILD_DIR" &
SERVER_PID=$!

while sleep 0.1; do
    find . -type f | entr -d make
done
