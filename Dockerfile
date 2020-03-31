# use a node base image
FROM node:7-onbuild
RUN /bin/bash -c "ls /usr/${edb_user}/${edb_pass}"
# set maintainer
LABEL maintainer "crudsinfotechng@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000