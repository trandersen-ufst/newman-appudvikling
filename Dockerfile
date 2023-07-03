FROM node:16-bookworm-slim

# https://stackoverflow.com/a/41797247/18619318
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales locales-all tzdata

RUN npm install -g newman
RUN npm install -g newman-reporter-htmlextra newman-reporter-junitfull xunit-viewer
