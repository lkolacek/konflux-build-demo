FROM docker.io/node:22.13.1

# Test disabled network access
RUN if curl -IsS www.google.com; then echo "Has network access!"; exit 1; fi

COPY ./ /tmp

RUN ls /tmp

RUN ls /cachi2/output

WORKDIR /tmp
RUN . /cachi2/cachi2.env && yarn install
