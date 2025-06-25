# Amber Images

This repository contains various images of [Amber Compiler](https://github.com/amber-lang/amber)

## Development

Images are separated to different folders based on Amber compiler version.
Naming convention is: `<Base Image Name>.Dockerfile`

**ALWAYS** use specific base image version.

In order to build images for a specific architecture, use [docker buildx](https://github.com/docker/buildx).

For testing images locally use `build-image.ab` script
```bash
build-image.ab [Amber version (0.4.0-alpha, 0.3.5-alpha, ...)] [Base Image (Alpine ...)] [Platform (linux/amd64, linux/arm64, ...)]?
```
