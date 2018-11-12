git -C aido-challenge-custom_code/ pull

docker-compose -f docker-compose-lf.yml pull && \
docker-compose -f docker-compose-lf.yml up
