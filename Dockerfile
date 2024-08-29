FROM public.ecr.aws/aws-cli/aws-cli:2.17.20
WORKDIR /usr/local/bin
RUN curl -O https://rolesanywhere.amazonaws.com/releases/1.2.0/X86_64/Linux/aws_signing_helper
RUN chmod a+x aws_signing_helper
USER 1000
