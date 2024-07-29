ARG VARIANT=ubuntu-20.04
ARG DEBIAN_FRONTEND=noninteractive
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}
RUN apt update && apt install -yq cmake software-properties-common
WORKDIR /tmp
RUN wget https://apt.llvm.org/llvm.sh
RUN chmod +x llvm.sh
RUN ./llvm.sh 18 all
ADD build-zig.sh /
RUN /build-zig.sh
