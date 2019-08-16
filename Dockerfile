FROM openjdk:11-jre-slim

MAINTAINER winky

RUN apt-get update && \
    apt-get install -y curl tar

RUN curl -L -o partiql.tgz https://github.com/partiql/partiql-lang-kotlin/releases/download/v0.1.0-alpha/partiql-cli-0.1.0.tgz && \
    mkdir partiql && \
    tar xzvf partiql.tgz -C partiql --strip-components 1

CMD ["/bin/bash"]
