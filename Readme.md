# Create concourse-helper image

Provides image for concourse tasks that have the following utilities:

- kapp
- ytt
- kubectl
- kp
- tmc

## Prerequisites before building image 

Retrieve dependencies.

>Note: Assumes you are running this on a mac

1. Set environment variables, ensure you have a valid `.pivnetrc` file, mine is at `~/.pivnetrc`. Update your image tag appropriately

```bash
export PIVNET_CONFIG=~/.pivnetrc
export IMAGE_TAG=harbor.stormsend.tkg-vsphere-lab.winterfell.live/concourse/concourse-helper
```

2. Run script to retrieve utilities.

```bash
./retrieve-utilities.sh
```

## Build Image

```bash
docker build -t $IMAGE_TAG .
docker push $IMAGE_TAG
```
