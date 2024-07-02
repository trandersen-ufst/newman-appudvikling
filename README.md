# newman-appudvikling

newman with the extra runners and locale support we need. Alpine does not
support locales very well, so switched to adapting the Debian-based newman chain (as
the docker images were not updated)

Base image chosen from newest Debian listed on https://hub.docker.com/_/node as of 2023-07-03 supporting node16 (which
is what the official newman Dockerfile uses).

In addition to the GitHub Action automatically building and pushing to the GitHub repository, I have also used the following to build and publish to DockerHub.

```shell
docker build -t traufst/newman-appudvikling .
docker push traufst/newman-appudvikling
```

Links:

* Newman:  https://github.com/postmanlabs/newman/blob/develop/README.md
* htmlextra:  https://github.com/DannyDainton/newman-reporter-htmlextra
* docker image: https://hub.docker.com/repository/docker/dannydainton/htmlextra
* https://github.com/martijnvandervlag/newman-reporter-junitfull

Runners:  https://www.npmjs.com/search?q=newman-reporter
