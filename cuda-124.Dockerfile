FROM sanglu/torch:cuda-12.4.1

RUN curl -fsSL https://code-server.dev/install.sh | sh

EXPOSE 8080
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080"]
