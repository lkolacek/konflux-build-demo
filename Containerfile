FROM docker.io/node:22.8.0

# Test disabled network access
RUN if curl -IsS www.google.com; then echo "Has network access!"; exit 1; fi

RUN ls /cachi2

RUN yarn install
