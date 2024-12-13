FROM alpine:3.20
RUN apk --no-cache add libc6-compat \
    && rm -rf /var/cache/apk/*
WORKDIR /usr/local/bin
ADD https://rolesanywhere.amazonaws.com/releases/1.4.0/X86_64/Linux/aws_signing_helper .
RUN chmod a+rx aws_signing_helper
USER 1000
