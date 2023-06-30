FROM postman/newman:alpine

# See https://github.com/DannyDainton/newman-reporter-htmlextra/blob/main/docker/Dockerfile

RUN npm install -g newman-reporter-htmlextra
RUN npm install -g newman-reporter-junitfull

WORKDIR /etc/newman

ENTRYPOINT ["newman"]
