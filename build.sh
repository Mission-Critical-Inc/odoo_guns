IMAGE_TAG_VERSION=$1

if [ -z "$IMAGE_TAG_VERSION" ]; then
    echo "Usage: $0 <image_tag_version>"
    exit 1
fi

docker build  -f Dockerfile.luckysguns --platform linux/amd64 --tag odoo_guns:${IMAGE_TAG_VERSION} --load .
docker tag odoo_guns:${IMAGE_TAG_VERSION} us-central1-docker.pkg.dev/automationtesting-466921/containers/odoo_guns:${IMAGE_TAG_VERSION}
docker push us-central1-docker.pkg.dev/automationtesting-466921/containers/odoo_guns:${IMAGE_TAG_VERSION}
