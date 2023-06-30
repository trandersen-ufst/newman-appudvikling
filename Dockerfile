FROM postman/newman:alpine

RUN npm install -g newman-reporter-htmlextra newman-reporter-junitfull xunit-viewer
