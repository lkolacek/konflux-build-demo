FROM docker.io/node:22.8.0

# Test disabled network access
RUN if curl -IsS www.google.com; then echo "Has network access!"; exit 1; fi

# Print cachi2 env vars file
# RUN cat /tmp/cachi2.env

RUN ls /
RUN ls /tmp

# RUN . /tmp/cachi2.env && yarn install
