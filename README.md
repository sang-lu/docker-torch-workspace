# Torch Workspace Docker Images

This repository provides Dockerfiles for building development environments with CUDA and code-server.

## Available Images

- `sanglu/torch-workspace:cuda-11.8.0`
- `sanglu/torch-workspace:cuda-12.1.1`

## Build Docker Images

To build the images locally, use the provided Makefile:

```sh
# Build CUDA 11.8 image
make build-118

# Build CUDA 12.1 image
make build-121

# Build all images
make build-all
````

## Push Docker Images

To push the images to Docker Hub:

```sh
# Push CUDA 11.8 image
make build-push-118

# Push CUDA 12.1 image
make build-push-121

# Push all images
make build-push-all
```

## Run the Image

To run the image and start code-server (listening on port 8080):

```sh
docker run -it --gpus all -p 8080:8080 sanglu/torch-workspace:cuda-12.1.1
```

Replace the tag with `cuda-11.8.0` if you want to use the CUDA 11.8 image.

Access code-server at: [http://localhost:8080](http://localhost:8080)

## Notes

- Ensure you have Docker and NVIDIA Container Toolkit installed for GPU support.
- The default code-server password and configuration can be set via environment variables. See [code-server documentation](https://github.com/coder/code-server) for details.
