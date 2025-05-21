FROM sanglu/torch:cuda-11.8.0

RUN curl -fsSL https://code-server.dev/install.sh | sh

EXPOSE 8080
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080"]
