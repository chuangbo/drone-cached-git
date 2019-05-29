# drone-cached-git

Drone plugin to clone `git` repositories with cache.

## Build

Build the Docker image with the following commands:

```
docker build --rm -f docker/Dockerfile.linux.amd64 -t chuangbo/drone-cached-git .
```

## Usage

Clone a commit:

```
docker run --rm \
  -e DRONE_REMOTE_URL=https://github.com/drone/envsubst.git \
  -e DRONE_BUILD_EVENT=push \
  -e DRONE_COMMIT_SHA=15e3f9b7e16332eee3bbdff9ef31f95d23c5da2c \
  -e DRONE_COMMIT_BRANCH=master \
  -v /tmp/git-repo-cache:/git-repo-cache
  chuangbo/drone-cached-git
```
